<?php
/* @var $this yii\web\View */
/* @var $model backend\models\LopHanhChinh */
/* @var $form yii\widgets\ActiveForm */

use backend\models\GiangVien;
use backend\models\LopHanhChinh;
use kartik\form\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;

?>

<div class="lop-hanh-chinh-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ma_lop')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ma_giang_vien')->widget(Select2::className(),[
        'data'=> ArrayHelper::map(GiangVien::find()->all(),'id','ten'),
	    'options' => ['placeholder' => 'Chọn giảng viên...'],
	    'pluginOptions' => [
		    'allowClear' => true
	    ],
    ]) ?>

	<?= $form->field($model, 'khoa_hoc')->textInput()?>
    <div class="form-group pull-right">
	    <button type="submit" class="btn btn-primary btn-outline">Save changes</button>
        <button type="button" class="btn btn-default btn-outline" data-dismiss="modal">Close</button>
    </div>
	<div class="clearfix"></div>
    <?php ActiveForm::end(); ?>

</div>
