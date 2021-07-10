<?php

use frontend\models\form\NapMaTheForm;
use himiklab\yii2\recaptcha\ReCaptcha2;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
 * Created by FesVPN.
 * @project Default (Template) Project
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    7/10/2021
 * @time    10:36 PM
 */
/* @var $this \yii\web\View */
/* @var $napMaTheForm NapMaTheForm */
/* @var $captcha \frontend\models\form\CaptchaForm */
$this->title = "Nạp mã code";
?>

<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title"><?= Html::encode($this->title) ?></h3>
		</div>
		<div class="panel-body">
			<?php $form = ActiveForm::begin([
				'enableAjaxValidation' => true,
			]); ?>
			<?= $form->field($napMaTheForm, 'code')->textInput() ?>
			<?= $form->field($captcha, 'captcha')->widget(ReCaptcha2::class, [
				'options' => [
					'autofocus' => 'autofocus',
					'class'     => 'form-control',
					'tabindex'  => '4',
				],
			])->label(false) ?>

			<?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
			<?php ActiveForm::end(); ?>
		</div>
	</div>

