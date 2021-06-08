<?php

use common\models\MonHoc;
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

    <?= $form->field($model, 'ma_giang_vien')->textInput() ?>

    <?= $form->field($model, 'ma_ki_hoc')->textInput() ?>

    <?= $form->field($model, 'ma_phong_hoc')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
