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
		$parent = parent::rules();
		$parent = [
			[
				'info_id',
				'safe',
			],
		];
		return $parent;
	}

	public function register() {
		if (!$this->validate()) {
			return false;
		}
		/** @var User $user */
		$user          = Yii::createObject(User::className());
		$user->info_id = $this->info_id;
		$user->flags   = \common\models\User::FLAG_SINHVIEN;
		$user->setScenario('register');
		$this->loadAttributes($user);
		if (!$user->register()) {
			return false;
		}
		return true;
	}
}