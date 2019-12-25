<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Tablemain */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tablemain-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'pmid')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ti')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'sta')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
