<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    24/6/2021
 * @time    1:57 AM
 */

namespace common\component;

use common\models\SinhVien;
use common\models\User;
use yii\db\ActiveRecord;

class Model extends ActiveRecord {

	/**
	 * @var User $user
	 */
	public $user = null;

	/**
	 * @var SinhVien $sinhVien
	 */
	public $sinhVien = null;

	public function init() {
		// TODO: Change the auto generated stub
		$this->user = \Yii::$app->user->identity;
		$this->sinhVien = $this->user->sinhVien;
		parent::init();
	}
}