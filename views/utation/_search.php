<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\UtationSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="utation-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'field') ?>

    <?= $form->field($model, 'content') ?>

    <?= $form->field($model, 'table_name') ?>

    <?= $form->field($model, 'var_name') ?>

    <?php // echo $form->field($model, 'id_field') ?>

    <?php // echo $form->field($model, 'file_name') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
