<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\LichThi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lich-thi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ma_lop_tin_chi')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tg_thi')->textInput() ?>

    <?= $form->field($model, 'ma_phong')->textInput() ?>

    <?= $form->field($model, 'ma_giang_vien')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
