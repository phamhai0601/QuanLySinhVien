<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\KiHoc */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="ki-hoc-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ma_ki_hoc')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tg_bat_dau')->textInput() ?>

    <?= $form->field($model, 'tg_ket_thuc')->textInput() ?>

    <?= $form->field($model, 'nam_hoc')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
