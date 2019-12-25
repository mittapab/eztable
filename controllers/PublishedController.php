<?php

namespace app\controllers;

use Yii;
use app\models\Published;
use app\models\PublishedSearch;
use app\models\Utation;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\models\AuthorTable;

/**
 * PublishedController implements the CRUD actions for Published model.
 */
class PublishedController extends Controller
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
     * Lists all Published models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PublishedSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Published model.
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
     * Creates a new Published model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model_public = new Published();
       

        if ($model_public->load(Yii::$app->request->post())) {

              return $this->redirect(['view', 'id' => $model->id]);
              $model_public->save(false);
 
//=====================================================================================================
//========================================= Save TO Utation ===========================================
//=====================================================================================================
           
           
           // get last id insert table
            $id = Yii::$app->db->getLastInsertID();
            // bind params
            $search_id = [':id' => $id];
            //find data 
            $model_public = Published::findOne(['id' => $search_id]);
            // select column 
             $sql = "SELECT column_name 
             FROM INFORMATION_SCHEMA.COLUMNS
             WHERE TABLE_NAME = 'published'";  
             $data = Yii::$app->db->createCommand($sql)->query();
             $array_col = [];
            
             foreach($model_public as $data_col){  $array_col[] = $data_col;  }
             unset($array_col[0]);
             $i = 1;
           
            foreach($data as $r){

                if($r['column_name'] !== 'id'){

                    $model_utation = new Utation();
                    $model_utation->field = $r['column_name'];
                    $model_utation->content = $array_col[$i];
                    $model_utation->table_name = $r['column_name'];
                    $model_utation->var_name = $r['column_name'];
                    $model_utation->id_publish = $model_public->id;
                    $model_utation->save(false);
                    $i++;
                 }

                 
            }
              return $this->redirect(['view', 'id' => $model_public->id]);
        }

        return $this->render('create', [
            'model' => $model_public,
        ]);
    }

    /**
     * Updates an existing Published model.
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
     * Deletes an existing Published model.
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
     * Finds the Published model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Published the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Published::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
