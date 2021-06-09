<?php

use common\models\BoMon;
use kartik\form\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model backend\models\MonHoc */
/* @var $form yii\widgets\ActiveForm */
?>
<div class="mon-hoc-form">
    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ten_mon_hoc')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ma_bo_mon')->widget(\kartik\select2\Select2::className(),[
        'data'=>ArrayHelper::map(BoMon::find()->all(),'id','ten'),
	    'options' => ['placeholder' => 'Chọn bộ môn...'],
	    'pluginOptions' => [
		    'allowClear' => true
	    ],
    ]) ?>

    <?= $form->field($model, 'tin_chi')->textInput() ?>

    <?= $form->field($model, 'dieu_kien')->textInput() ?>

    <?= $form->field($model, 'mieu_ta')->textarea(['rows'=>'6']) ?>


    <div class="form-group pull-right">
	    <button type="submit" class="btn btn-primary btn-outline">Save changes</button>
	    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    </div>
	<div class="clearfix"></div>

    <?php ActiveForm::end(); ?>

</div>
