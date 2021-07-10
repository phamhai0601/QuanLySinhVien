<?php
/*
 * This file is part of the Dektrium project.
 *
 * (c) Dektrium project <http://github.com/dektrium/>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace frontend\controllers\user;

use frontend\models\form\CaptchaForm;
use frontend\models\form\LoginForm;
use yii\web\Response;

/** @var LoginForm $model */
class SecurityController extends \dektrium\user\controllers\SecurityController {

	/**
	 * Displays the login page.
	 *
	 * @return string|Response
	 */
	public function actionLogin() {
		if (!\Yii::$app->user->isGuest) {
			$this->goHome();
		}
		$model   = \Yii::createObject(LoginForm::className());
		$captcha = new CaptchaForm();
		$event   = $this->getFormEvent($model);
		$this->performAjaxValidation($model);
		$this->trigger(self::EVENT_BEFORE_LOGIN, $event);
		if ($model->load(\Yii::$app->getRequest()->post()) && $captcha->check()) {
			if ($model->login()) {
				$this->trigger(self::EVENT_AFTER_LOGIN, $event);
				return $this->goBack();
			} else {
				\Yii::$app->session->setFlash('danger', 'Invalid login or password.');
				return $this->refresh();
			}
		}
		return $this->render('login', [
			'captcha' => $captcha,
			'model'   => $model,
			'module'  => $this->module,
		]);
	}
}
