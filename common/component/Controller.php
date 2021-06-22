<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    4/6/2021
 * @time    9:10 AM
 */
namespace common\component;
use common\models\SinhVien;
use common\models\User;

class Controller extends \yii\web\Controller {

	/** @var User $user */
	public $user = null;

	/**
	 * @var SinhVien $sinhVien
	 */
	public $sinhVien = null;

	public function init() {
		parent::init();
		$this->user     = \Yii::$app->user->identity;
		$this->sinhVien = $this->user->sinhVien;
	}
}