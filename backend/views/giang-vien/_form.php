<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\GiangVien */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="giang-vien-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id')->textInput() ?>

    <?= $form->field($model, 'ten')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'hoc_van')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'chuyen_nganh')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'que_quan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ma_lop_hanh_chinh')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
