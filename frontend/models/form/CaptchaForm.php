<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    10/7/2021
 * @time    6:27 PM
 */

namespace frontend\models\form;

use frontend\component\Form;
use himiklab\yii2\recaptcha\ReCaptchaValidator;
use himiklab\yii2\recaptcha\ReCaptchaValidator2;
use Yii;

class CaptchaForm extends Form {

	public $captcha;

	/**
	 * @return array
	 */
	public function attributeLabels() {
		return ['captcha' => 'Captcha'];
	}

	/**
	 * @return array
	 */
	public function rules() {
		return [
			[
				[
					'captcha',
				],
				'required',
			],
			[
				['captcha'],
				ReCaptchaValidator2::class,
				'uncheckedMessage' => 'Please confirm that you are not a bot.',
			],
		];
	}

	/**
	 * @return bool
	 */
	public function check() {
		$this->load(Yii::$app->request->post());
		if (YII_ENV_DEV) {
			return true;
		}
		return $this->validate();
	}
}