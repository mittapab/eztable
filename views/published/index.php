<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PublishedSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Publisheds';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="published-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Published', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'title',
            'author:ntext',
            'year',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
