<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    14/6/2021
 * @time    2:29 AM
 */
namespace common\form;

use dektrium\user\models\User;
use Yii;

class RegistrationForm extends \dektrium\user\models\RegistrationForm {
	public $info_id;

	public function rules() {
		$rules =[
			['info_id','safe']
		];
		return parent::rules();
	}

	public function register()
	{
		if (!$this->validate()) {
			return false;
		}

		/** @var User $user */
		$user = Yii::createObject(User::className());
		$user->info_id = $this->info_id;
		$user->flags = 1;
		$user->setScenario('register');
		$this->loadAttributes($user);
		if (!$user->register()) {
			return false;
		}

//		Yii::$app->session->setFlash(
//			'info',
//			Yii::t(
//				'user',
//				'Your account has been created and a message with further instructions has been sent to your email'
//			)
//		);

		return true;
	}
}