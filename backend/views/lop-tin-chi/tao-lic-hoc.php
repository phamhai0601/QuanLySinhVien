<?php

/**
 * Created by FesVPN.
 * @project Default (Template) Project
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    13/6/2021
 * @time    7:31 PM
 */

/* @var $this \yii\web\View */
/* @var $model \backend\form\TaoLichHocForm */

use backend\models\GioHoc;
use backend\models\NgayHoc;
use kartik\form\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;

?>

<?php $fom = ActiveForm::begin(['id'=>'tao-lich-hoc-form']); ?>

<?= $fom->field($model,'ngay_hoc')->widget(Select2::class,[
	'data'=> ArrayHelper::map(NgayHoc::find()->all(),'id','ngay'),
	'options' => ['placeholder' => 'Chọn ngày học...'],
	'pluginOptions' => [
		'allowClear' => true
	],
]) ?>

<?=$fom->field($model,'gio_hoc')->widget(Select2::class,[
	'data' => ArrayHelper::map(GioHoc::find()->all(),'id','gio_bat_dau'),
	'options' => ['placeholder' => 'Select a state ...'],
	'pluginOptions' => [
		'allowClear' => true
	],
]) ?>
<div class="form-group pull-right">
	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	<button type="submit" class="btn btn-primary">Save changes</button>
</div>
<div class="clearfix"></div>
<?php ActiveForm::end() ?>
