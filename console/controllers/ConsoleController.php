<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    7/10/2021
 * @time    11:23 PM
 */

namespace console\controllers;

use common\models\User;
use common\models\UserOcc;
use yii\console\Controller;

class ConsoleController extends Controller {

	public function actionCreateUserOcc() {
		$users = User::find()->all();
		foreach ($users as $user) {
			$userOcc             = new UserOcc();
			$userOcc->user_id    = $user->id;
			$userOcc->occ        = 0;
			$userOcc->created_at = time();
			if ($userOcc->save()) {
				echo 'save ' . $user->email . PHP_EOL;
			} else {
				echo '<pre>';
				print_r($userOcc->errors);
				die;
			}
		}
	}
}
