<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    10/7/2021
 * @time    5:55 PM
 */

namespace frontend\models\form;

use dektrium\user\helpers\Password;
use Yii;

class LoginForm extends \dektrium\user\models\LoginForm {

	/** @inheritdoc */
	public function rules() {
		$rules = [
			'loginTrim'            => [
				'login',
				'trim',
			],
			'requiredFields'       => [
				[
					'login',
					'password',
				],
				'required',
			],
			'confirmationValidate' => [
				'login',
				function($attribute) {
					if ($this->user !== null) {
						$confirmationRequired = $this->module->enableConfirmation && !$this->module->enableUnconfirmedLogin;
						if ($confirmationRequired && !$this->user->getIsConfirmed()) {
							$this->addError($attribute, Yii::t('user', 'You need to confirm your email address'));
						}
						if ($this->user->getIsBlocked()) {
							$this->addError($attribute, Yii::t('user', 'Your account has been blocked'));
						}
					}
				},
			],
			'rememberMe'           => [
				'rememberMe',
				'boolean',
			],
		];
		return $rules;
	}

	/**
	 * Validates form and logs the user in.
	 *
	 * @return bool whether the user is logged in successfully
	 */
	public function login() {
		if ($this->validate()) {
			if ($this->user == null || !Password::validate($this->password, $this->user->password_hash)) {
				return false;
			}
			$isLogged = Yii::$app->getUser()->login($this->user, $this->rememberMe ? $this->module->rememberFor : 0);
			if ($isLogged) {
				$this->user->updateAttributes(['last_login_at' => time()]);
			}
			return $isLogged;
		}
		return false;
	}
}