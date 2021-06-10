<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    10/6/2021
 * @time    9:44 PM
 */

namespace common\component;
use common\models\User;
use Yii;
use yii\base\Model;

class Form extends Model {
	/**@var User $user */
	public $user;

	/**
	 * {@inheritDoc}
	 */
	public function init() {
		parent::init();
		if (!Yii::$app->user->isGuest) {
			$this->user = Yii::$app->user->identity;
		} else {
			$this->user = null;
		}
	}
}