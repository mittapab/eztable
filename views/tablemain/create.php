<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Tablemain */

$this->title = 'Create Tablemain';
$this->params['breadcrumbs'][] = ['label' => 'Tablemains', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tablemain-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
