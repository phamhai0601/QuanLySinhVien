<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\LopHanhChinh */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lop-hanh-chinh-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ma_lop')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ma_giang_vien')->textInput() ?>

    <?= $form->field($model, 'khoa_hoc')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <div class="form-group pull-right">
	    <button type="submit" class="btn btn-primary btn-outline">Save changes</button>
        <button type="button" class="btn btn-default btn-outline" data-dismiss="modal">Close</button>
    </div>
	<div class="clearfix"></div>
    <?php ActiveForm::end(); ?>

</div>
