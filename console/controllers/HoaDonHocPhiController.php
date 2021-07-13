<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    13/7/2021
 * @time    7:29 AM
 */

namespace console\controllers;

use common\models\HoaDonHocPhi;
use common\models\KiHoc;
use common\models\LopHanhChinh;
use common\models\SinhVien;
use common\models\SvDkiTinChi;
use phuong17889\daemon\commands\DaemonController;

class HoaDonHocPhiController extends DaemonController {

	protected function worker() {
		// TODO: Implement worker() method.
	}

	protected function name() {
		return "hoa-don-hoc-phi";
	}

	public function actionIndex() {
		$lopHanhChinh = LopHanhChinh::find()->where(['action' => LopHanhChinh::ACTION_CREATE_INVOICE])->one();
		if ($lopHanhChinh == null) {
			return false;
		}
		$sinhViens = SinhVien::find()->where(['lop_hanh_chinh' => $lopHanhChinh->id])->all();
		if (empty($sinhViens)) {
			return false;
		}

		$kiHoc = KiHoc::find()->orderBy(['created_at'=>SORT_DESC])->one();
		foreach ($sinhViens as $sinhVien) {
			$sinhVienDangKiLopTinChis = SvDkiTinChi::find()
			                                       ->alias('sv_dang_ki_tin_chi')
			                                       ->innerJoin('lop_tin_chi', 'sv_dang_ki_tin_chi.ma_lop_tin_chi = lop_tin_chi.ten_lop ')
			                                       ->where(['lop_tin_chi.ma_ki_hoc' => $kiHoc->id])
			                                       ->andWhere(['sv_dang_ki_tin_chi.id_sinh_vien' => $sinhVien->id])
			                                       ->all();
			if(!empty($sinhVienDangKiLopTinChis)){
				$hoaDonHocPhi = new HoaDonHocPhi();

			}
		}
	}
}