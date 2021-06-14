<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    15/6/2021
 * @time    1:22 AM
 */

namespace common\component;
class View extends \yii\web\View {
	/**@var User */
	public $user;

	/**
	 * {@inheritDoc}
	 */
	public function init() {
		parent::init();
		if (!\Yii::$app->user->isGuest) {
			$this->user = \Yii::$app->user->identity;
		} else {
			$this->user = null;
		}
	}
}