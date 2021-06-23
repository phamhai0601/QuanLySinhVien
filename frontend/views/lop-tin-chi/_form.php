<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\LopTinChi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lop-tin-chi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ten_lop')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ma_mon_hoc')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ma_giang_vien')->textInput() ?>

    <?= $form->field($model, 'ma_ki_hoc')->textInput() ?>

    <?= $form->field($model, 'ma_phong_hoc')->textInput() ?>

    <?= $form->field($model, 'sv_toi_thieu')->textInput() ?>

    <?= $form->field($model, 'sv_toi_da')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
