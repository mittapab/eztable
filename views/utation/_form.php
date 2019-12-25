<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Utation */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="utation-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'field')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'content')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'table_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'var_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'id_field')->textInput() ?>

    <?= $form->field($model, 'file_name')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
