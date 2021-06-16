<?php

/**
 * Created by FesVPN.
 * @project Default (Template) Project
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    10/6/2021
 * @time    9:54 PM
 */

/* @var $this \yii\web\View */
/* @var $model TaoLopTinChiForm */

use backend\models\LopTinChi;
use kartik\daterange\DateRangePicker;
use kartik\form\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;

?>

<?php $form = ActiveForm::begin(); ?>

<?= $form->field($model,'ma_lop_tin_chi')->textInput([
		'readonly' => true,
])?>

<?= $form->field($model, 'ngay_dang_ki', [
	'addon'   => [
			'prepend' => [
					'content' => '<i class="fa fa-calendar" aria-hidden="true"></i>'
			]
	],
	'options' => [
			'class' => 'drp-container form-group'
	],
])->widget(DateRangePicker::class, [
	'useWithAddon' => true,
	'readonly' => 'readonly',
])?>

<div class="form-group pull-right">
	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	<button type="submit" class="btn btn-primary">Save changes</button>
</div>
<div class="clearfix"></div>

<?php ActiveForm::end(); ?>

