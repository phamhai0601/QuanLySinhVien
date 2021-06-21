<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    22/6/2021
 * @time    2:02 AM
 */

namespace console\controllers;

use common\models\DangKiLopTinChi;
use yii\console\Controller;

class LichHocController extends Controller {

	public function actionUpdateTinhTrangLopTinChi() {
		\Yii::$app->db->createCommand('update dang_ki_lop_tin_chi set tinh_trang = :tinh_trang where tg_bat_dau < :time and tg_ket_thuc > :time', [
			':tinh_trang' => DangKiLopTinChi::TRANGTHAI_MO,
			':time'       => time(),
		])->execute();
		\Yii::$app->db->createCommand('update dang_ki_lop_tin_chi set tinh_trang = :tinh_trang where tg_ket_thuc < :time', [
			':tinh_trang' => DangKiLopTinChi::TRANGTHAI_DONG,
			':time'       => time(),
		])->execute();
	}
}