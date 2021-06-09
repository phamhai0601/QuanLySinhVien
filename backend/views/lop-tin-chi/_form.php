<?php

use common\models\GiangVien;
use common\models\KiHoc;
use common\models\MonHoc;
use common\models\PhongHoc;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\LopTinChi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lop-tin-chi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ten_lop')->textInput(['maxlength' => true]) ?>

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
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
