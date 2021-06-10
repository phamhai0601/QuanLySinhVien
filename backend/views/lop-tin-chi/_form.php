<?php

use common\models\GiangVien;
use common\models\KiHoc;
use common\models\MonHoc;
use common\models\PhongHoc;
use kartik\form\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\LopTinChi */
/* @var $form kartik\form\ActiveForm */
/* @var String $action */
?>

<div class="lop-tin-chi-form">
    <?php $form = ActiveForm::begin(); ?>
    <?php if($action !== 'create'){
	    echo $form->field($model, 'ten_lop')->textInput([
		    'maxlength' => true,
		    'readonly'=>'readonly'
	    ]);
    } ?>

    <?= $form->field($model, 'ma_mon_hoc')->widget(Select2::className(),[
        'data'=> ArrayHelper::map(MonHoc::find()->all(),'id','ten_mon_hoc'),
	    'options' => ['placeholder'=>'Chọn môn học...'],
	    'pluginOptions' => [
		    'allowClear' => true,
	    ]
    ]) ?>

    <?= $form->field($model, 'ma_giang_vien')->widget(Select2::class,[
        'data' => ArrayHelper::map(GiangVien::find()->all(),'id','ten'),
	    'options' => ['placeholder'=>'Chọn giảng viên...'],
        'pluginOptions' => [
	        'allowClear' => true,
        ]
    ]) ?>

    <?= $form->field($model, 'ma_ki_hoc')->widget(Select2::class,[
	    'data' => ArrayHelper::map(KiHoc::find()->all(),'id','ma_ki_hoc'),
	    'options' => ['placeholder'=>'Chọn kì học...'],
	    'pluginOptions' => [
		    'allowClear' => true,
	    ]
    ]) ?>

    <?= $form->field($model, 'ma_phong_hoc')->widget(Select2::class,[
	    'data' => ArrayHelper::map(PhongHoc::find()->all(),'id','ten'),
	    'options' => ['placeholder'=>'Chọn phòng học...'],
	    'pluginOptions' => [
		    'allowClear' => true,
	    ]
    ]) ?>
	<div class="form-group pull-right">
		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		<button type="submit" class="btn btn-primary">Save changes</button>
	</div>
	<div class="clearfix"></div>
    <?php ActiveForm::end(); ?>

</div>
