<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\DangKiLopTinChi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="dang-ki-lop-tin-chi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ma_lop_tin_chi')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tg_bat_dau')->textInput() ?>

    <?= $form->field($model, 'tg_ket_thuc')->textInput() ?>

    <?= $form->field($model, 'tinh_trang')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
