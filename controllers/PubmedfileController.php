<?php

namespace app\controllers;

use Yii;
use app\models\Pubmedfile;
use app\models\PubmedfileSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use app\models\AuthorTable;
use app\models\Publisheds;
use app\models\Utations;
use app\models\FieldsPublished;
use app\models\FieldsTables;
/**
 * PubmedfileController implements the CRUD actions for Pubmedfile model.
 */
class PubmedfileController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Pubmedfile models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PubmedfileSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Pubmedfile model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Pubmedfile model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Pubmedfile();

        if ($model->load(Yii::$app->request->post())) {

            $file = UploadedFile::getInstance($model , 'file_name');
            if($file != null){

            $file->saveAs('ezupload/'.$file->baseName.'.'.$file->extension);
            $model->file_name = $file->baseName.'.'.$file->extension;
            $model->save(false);

            $handle = file_get_contents('ezupload/'.$file->baseName.'.'.$file->extension);
            file_put_contents("ezupload/".$file->baseName.'.txt', $handle);
            $handle = fopen('ezupload/'.$file->baseName.'.txt', "r");
           
             $dataArray = [];
             $outputArr = [];
             $row=0;
             $subrow=1;
            
            if ($handle) { 
                while (($line = fgets($handle)) !== false) { 
                    $dataArray = explode('- ', $line);
                   
                    if(count($dataArray) > 1){

                        if(strlen($dataArray[0]) < 10 ){ 

                        $outputArr[$row] = [
                            'key'=>$dataArray[0],
                            'value'=>$dataArray[1],
                         ];
                    
                        $row++;
                        $subrow=$row;
                    }else{

                        $subrow -= 1;
                        $outputArr[$subrow]['value'] .= '- '.$dataArray[0].$dataArray[1];
                        $subrow++;
                     }
                        
                    }else{
                      if(!empty($outputArr)){
                      $subrow -= 1;
                      $outputArr[$subrow]['value'] .= $dataArray[0];  
                      $subrow++;
                      }
                    }
                  }
               }
              //========================================================================================
               $publish_model = new Publisheds();
               $field_published_model = FieldsPublished::find()->all();
               
               $arr_key = [];
               foreach($field_published_model as $r){ $arr_key[$r['key']] = $r['value']; }
               
               $element = [];
               $value_string_sql = '';
               $vales_sql ='';

               foreach($outputArr as $r) {
               $r['key'] = trim($r['key']);

               if(array_key_exists($r['key'], $arr_key)){

                 $value_string_sql .= $arr_key[$r['key']].',';
                 $vales_sql .= "'".$r['value']."',";

               }
            }
            
            $value_string_sql = substr($value_string_sql, 0 , -1 );
            $vales_sql  = substr($vales_sql, 0 , -1 );
            $sql = "INSERT INTO publisheds(". $value_string_sql.") VALUES(".$vales_sql.")";
            Yii::$app->db->createCommand($sql)->execute();
            $id = Yii::$app->db->getLastInsertID();

//=====================================================================================================
//========================================= Save To Utation ===========================================
//=====================================================================================================
           
           // bind params
           $search_id = [':id' => $id];
           //find data 
           $model_public = Publisheds::findOne(['id' => $search_id]);
           // select column 
            $sql = "SELECT column_name 
            FROM INFORMATION_SCHEMA.COLUMNS
            WHERE TABLE_NAME = 'publisheds'";  
            $data = Yii::$app->db->createCommand($sql)->query();
            $array_col = [];
           
            foreach($model_public as $data_col){  $array_col[] = $data_col;  }
            unset($array_col[0]);
            $i = 1;
            $ele = 0;
       
           foreach($data as $r){

               if($r['column_name'] !== 'id'){

                   $model_utation = new Utations();
                   $model_utation->field = ''; //$arr_key[0] ;
                   $model_utation->content = $array_col[$i];
                   $model_utation->table_name = 'publisheds';//$r['column_name'];
                   $model_utation->var_name = $r['column_name'];
                   $model_utation->id_published = $model_public->id;
                   $model_utation->save(false);
                   $i++;
                   $ele++;
                }
             }
           //=================================================================
           //=================================================================

           try{

           $arr_key_table = [];
           $value_string_sql = '';
           $vales_sql ='';
           $field_table_model = FieldsTables::find()->all();
           foreach( $field_table_model as $field_table){
               $arr_key_table[$field_table['key']] = $field_table['value'];
            }

           foreach($outputArr as $r) {
                $r['key'] = trim($r['key']);

              if(array_key_exists($r['key'], $arr_key_table)){

                $sql = "INSERT INTO ".$arr_key_table[$r['key']]."(element , content , id_published)";
                $sql .= ' VALUES("'.$r['key'].'"  , "'.$r['value'].'"  , "'.$id.'")';

               
               Yii::$app->db->createCommand($sql)->execute();
             }
           }

        }catch(MySQLException $e){
             $e->getMessage();
        }     
        //========================================================================================
               return $this->redirect(['view', 'id' => $model->id]);
         }

        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Pubmedfile model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Pubmedfile model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Pubmedfile model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Pubmedfile the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Pubmedfile::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
