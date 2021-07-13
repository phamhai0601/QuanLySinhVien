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

use kartik\form\ActiveForm;

?>
<?php $form = ActiveForm::begin([
	'id'                     => 'tao-hoa-don-form',
	'enableAjaxValidation'   => true,
	'enableClientValidation' => false,
]); ?>

<?= $form->field($tgNopHocPhiForm, 'tg_bat_dau')->textInput(); ?>
<?= $form->field($tgNopHocPhiForm, 'tg_ket_thuc')->textInput(); ?>
<div class="form-group">
	<button type="submit" class="btn btn-primary">Save changes</button>
	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
</div>
<?php ActiveForm::end() ?>
