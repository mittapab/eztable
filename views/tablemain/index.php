<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TablemainSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tablemains';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tablemain-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Tablemain', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

           
            'pmid',
            'ti:ntext',
            'sta',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
