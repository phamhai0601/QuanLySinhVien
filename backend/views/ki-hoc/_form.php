<?php

use common\models\KiHoc;
use kartik\date\DatePicker;
use kartik\popover\PopoverX;
use kartik\select2\Select2;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\KiHoc */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="ki-hoc-form">

	<?php $form = ActiveForm::begin(); ?>

	<?= $form->field($model, 'ma_ki_hoc')->widget(Select2::class, [
		'data'          => KiHoc::KIHOC,
		'options'       => [
			'placeholder' => 'Select a state ...',
		],
		'pluginOptions' => [
			'allowClear' => true,
		],
	]) ?>

	<div class="col-md-6">
		<?= $form->field($model, 'tg_bat_dau')->widget(DatePicker::class, [
			'readonly'      => true,
			'size'          => 'lg',
			'options' => ['placeholder' => 'Thời gian bắt đầu...'],
			'type' => DatePicker::TYPE_INLINE,
			'pluginOptions' => [
				'autoclose' => true,
				'format'    => 'mm/dd/yyyy',
			],
		]) ?>
	</div>
	<div class="col-md-6">
		<?= $form->field($model, 'tg_ket_thuc')->widget(DatePicker::class, [
			'readonly'      => true,
			'size'          => 'lg',
			'options' => ['placeholder' => 'Thời gian kết thúc...'],
			'type' => DatePicker::TYPE_INLINE,
			'pluginOptions' => [
				'autoclose' => true,
				'format'    => 'mm/dd/yyyy',
			],
		]) ?>
	</div>
	<div class="clearfix"></div>
	<div class="form-group">
		<?= Html::submitButton('Save', ['class' => 'btn btn-success pull-right']) ?>
	</div>

	<?php ActiveForm::end(); ?>

</div>
