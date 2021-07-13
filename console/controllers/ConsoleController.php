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

use common\models\DangKiLopTinChi;
use common\models\HoaDonHocPhi;
use common\models\SinhVien;
use common\models\SvDkiTinChi;
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

	public function actionIndex() {
		$sinhViens = SinhVien::find()->where(['lop_hanh_chinh' => 2])->all();
		foreach ($sinhViens as $sinhVien) {
			$sinhVienDangKiLopTinChis = SvDkiTinChi::find()
			                                       ->alias('sv_dang_ki_tin_chi')
			                                       ->innerJoin('lop_tin_chi', 'sv_dang_ki_tin_chi.ma_lop_tin_chi = lop_tin_chi.ten_lop ')
			                                       ->where(['lop_tin_chi.ma_ki_hoc' => 8])
			                                       ->andWhere(['sv_dang_ki_tin_chi.id_sinh_vien'=>3])
			                                       ->all();
			if($sinhVienDangKiLopTinChis){
				$hoaDonHocPhi = new HoaDonHocPhi();
//				$hoaDonHocPhi->
			}
		}
	}
}
