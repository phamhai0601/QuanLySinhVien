<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\search\SinhVienSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sinh-vien-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'ten') ?>

    <?= $form->field($model, 'email') ?>

    <?= $form->field($model, 'lop_hanh_chinh') ?>

    <?= $form->field($model, 'que_quan') ?>

    <?php // echo $form->field($model, 'gioi_tinh') ?>

    <?php // echo $form->field($model, 'tg_nhap_hoc') ?>

    <?php // echo $form->field($model, 'cmnd') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
