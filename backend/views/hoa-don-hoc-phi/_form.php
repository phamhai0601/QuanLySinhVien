<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\HoaDonHocPhi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="hoa-don-hoc-phi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ngay_db_nop')->textInput() ?>

    <?= $form->field($model, 'ngay_kt_nop')->textInput() ?>

    <?= $form->field($model, 'trang_thai')->textInput() ?>

    <?= $form->field($model, 'user_id')->textInput() ?>

    <?= $form->field($model, 'tong_tien')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
