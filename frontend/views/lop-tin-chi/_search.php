<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\search\LopTinChiSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lop-tin-chi-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'ten_lop') ?>

    <?= $form->field($model, 'ma_mon_hoc') ?>

    <?= $form->field($model, 'ma_giang_vien') ?>

    <?= $form->field($model, 'ma_ki_hoc') ?>

    <?php // echo $form->field($model, 'ma_phong_hoc') ?>

    <?php // echo $form->field($model, 'sv_toi_thieu') ?>

    <?php // echo $form->field($model, 'sv_toi_da') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
