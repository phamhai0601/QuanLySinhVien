<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\HoaDonSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="hoa-don-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'ma_the_nap') ?>

    <?= $form->field($model, 'user_tao_hd') ?>

    <?= $form->field($model, 'status') ?>

    <?= $form->field($model, 'ma_giao_dich') ?>

    <?php // echo $form->field($model, 'ma_ma_the') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
