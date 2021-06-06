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

    <?= $form->field($model, 'giang_vien_hd')->textInput() ?>

    <?= $form->field($model, 'khoa_hoc')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
