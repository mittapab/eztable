<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\UtationSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Utations';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="utation-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Utation', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
 
            'field',
            'content:ntext',
            'table_name',
            'var_name',
            'id_publish',
            // 'file_name',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); 
    

    //สเตป 
    //1 วนลูป ขอ้มูลจากตาราง publish ออกมา
    //2 วนลูป save แถว คอลัมด์ ลงในตาราง utation
    //3 
    
    
    
    
    
    ?>


</div>
