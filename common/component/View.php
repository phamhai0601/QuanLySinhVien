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
use common\models\SinhVien;
use common\models\User;

/**
 * Class View
 * @package common\component
 * @property User $user
 * @property SinhVien $sinhVien
 */
class View extends \yii\web\View {

	/**@var User */
	public $user;

	/**
	 * @var SinhVien
	 */
	public $sinhVien;

	/**
	 * {@inheritDoc}
	 */
	public function init() {
		parent::init();
		if (!\Yii::$app->user->isGuest) {
			$this->user     = \Yii::$app->user->identity;
			$this->sinhVien = $this->user->sinhVien;
		} else {
			$this->user     = null;
			$this->sinhVien = null;
		}
	}
}