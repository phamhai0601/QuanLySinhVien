<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\search\HoaDonHocPhiSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="hoa-don-hoc-phi-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'ngay_db_nop') ?>

    <?= $form->field($model, 'ngay_kt_nop') ?>

    <?= $form->field($model, 'trang_thai') ?>

    <?= $form->field($model, 'user_id') ?>

    <?php // echo $form->field($model, 'tong_tien') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
