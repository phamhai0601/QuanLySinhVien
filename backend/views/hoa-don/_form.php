<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\HoaDon */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="hoa-don-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ma_the_nap')->textInput() ?>

    <?= $form->field($model, 'user_tao_hd')->textInput() ?>

    <?= $form->field($model, 'status')->textInput() ?>

    <?= $form->field($model, 'ma_giao_dich')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ma_ma_the')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
