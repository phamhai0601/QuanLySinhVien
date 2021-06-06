<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\SinhVien */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sinh-vien-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ten')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'que_quan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'gioi_tinh')->textInput() ?>

    <?= $form->field($model, 'tg_nhap_hoc')->textInput() ?>

    <?= $form->field($model, 'cmnd')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
