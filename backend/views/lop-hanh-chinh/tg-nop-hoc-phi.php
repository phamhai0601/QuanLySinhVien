<?php
/**
 * Created by FesVPN.
 * @project Default (Template) Project
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    14/7/2021
 * @time    12:14 AM
 */
/* @var $this \yii\web\View */

/* @var $tgNopHocPhiForm \backend\form\TgNopHocPhiForm */

use kartik\date\DatePicker;
use kartik\form\ActiveForm;

?>
<?php $form = ActiveForm::begin([
	'id'                     => 'tao-hoa-don-form',
	'enableAjaxValidation'   => true,
	'enableClientValidation' => false,
]); ?>

<?= $form->field($tgNopHocPhiForm, 'tg_bat_dau')->widget(DatePicker::class, [
	'type'          => DatePicker::TYPE_COMPONENT_APPEND,
	'readonly'      => 'readonly',
	'pluginOptions' => [
		'format'    => 'dd-mm-yyyy',
		'autoclose' => true,
	],
	'pluginEvents'  => [
		"hide" => "function(e) { $('#tgnophocphiform-tg_ket_thuc').trigger('blur'); }",
	],
]); ?>

<?= $form->field($tgNopHocPhiForm, 'tg_ket_thuc')->widget(DatePicker::class, [
	'type'          => DatePicker::TYPE_COMPONENT_APPEND,
	'readonly'      => 'readonly',
	'pluginOptions' => [
		'format'    => 'dd-mm-yyyy',
		'autoclose' => true,
	],
]); ?>
<div class="form-group">
	<button type="submit" class="btn btn-primary">Save changes</button>
	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
</div>
<?php ActiveForm::end() ?>
