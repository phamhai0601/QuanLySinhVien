<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\search\DangKiLopTinChiSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="dang-ki-lop-tin-chi-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'ma_lop_tin_chi') ?>

    <?= $form->field($model, 'tg_bat_dau') ?>

    <?= $form->field($model, 'tg_ket_thuc') ?>

    <?= $form->field($model, 'tinh_trang') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
