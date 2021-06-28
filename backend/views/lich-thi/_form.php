<?php

use backend\models\GiangVien;
use common\models\PhongHoc;
use kartik\date\DatePicker;
use kartik\datetime\DateTimePicker;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\LichThi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lich-thi-form">

	<?php $form = ActiveForm::begin(); ?>

	<?= $form->field($model, 'ma_lop_tin_chi')->textInput() ?>

	<?= $form->field($model, 'tg_thi')->widget(DateTimePicker::class, [
		'readonly'      => true,
		'pluginOptions' => [
			'autoclose' => true,
			'format'    => 'mm/dd/yyyy hh:ii',
		],
		'options'       => [
			'placeholder' => 'Chọn ngày thi...',
		],
	]) ?>

	<?= $form->field($model, 'ma_phong')->widget(Select2::class, [
		'name'          => 'status',
		'data'          => ArrayHelper::map(PhongHoc::find()->all(), 'id', 'ten'),
		'options'       => ['placeholder' => 'Chọn phòng học...'],
		'pluginOptions' => [
			'allowClear' => true,
		],
	]) ?>

	<?= $form->field($model, 'ma_giang_vien')->widget(Select2::class, [
		'name'          => 'status',
		'data'          => ArrayHelper::map(GiangVien::find()->all(), 'id', 'ten'),
		'options'       => ['placeholder' => 'Chọn phòng học...'],
		'pluginOptions' => [
			'allowClear' => true,
		],
	]) ?>

	<div class="form-group">
		<?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
	</div>

	<?php ActiveForm::end(); ?>

</div>
