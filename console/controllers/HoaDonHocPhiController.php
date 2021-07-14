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

use common\models\ChiTietHoaDon;
use common\models\HoaDonHocPhi;
use common\models\KiHoc;
use common\models\SinhVien;
use common\models\SvDkiTinChi;
use common\models\TgNopHocPhi;
use phuong17889\daemon\commands\DaemonController;
use Yii;
use yii\base\BaseObject;

class HoaDonHocPhiController extends DaemonController {

	public $kiHoc;

	public function actions() {
		$this->kiHoc = KiHoc::find()->orderBy(['id' => SORT_DESC])->one();
	}

	protected function worker() {
		$this->actionIndex();
	}

	protected function name() {
		return "hoa-don-hoc-phi";
	}

	public function actionIndex() {
		$tgNopHocPhi = TgNopHocPhi::find()->where(['status' => TgNopHocPhi::STATUS_PENDING])->andWhere(['ki_hoc' => $this->kiHoc->id])->one();
		if ($tgNopHocPhi === null) {
			return false;
		}
		$sinhViens = SinhVien::find()->where(['lop_hanh_chinh' => $tgNopHocPhi->id_lop_hoc])->all();
		if (!empty($sinhViens)) {
			foreach ($sinhViens as $sinhVien) {
				$transaction = Yii::$app->db->beginTransaction();
				try {
					$sinhVienDangKiLopTinChis = SvDkiTinChi::find()->alias('sv_dang_ki_tin_chi')->innerJoin('lop_tin_chi', 'sv_dang_ki_tin_chi.ma_lop_tin_chi = lop_tin_chi.ten_lop ')->where(['lop_tin_chi.ma_ki_hoc' => $this->kiHoc->id])->andWhere(['sv_dang_ki_tin_chi.id_sinh_vien' => $sinhVien->id])->all();
					if (!empty($sinhVienDangKiLopTinChis)) {
						$hoaDonHocPhi = HoaDonHocPhi::newInstance($sinhVien, $tgNopHocPhi);
						if ($hoaDonHocPhi) {
							$tong = 0;
							foreach ($sinhVienDangKiLopTinChis as $sinhVienDangKiLopTinChi) {
								$chiTietHoaDon = ChiTietHoaDon::newInstance($hoaDonHocPhi, $sinhVienDangKiLopTinChi);
								$tong          += $chiTietHoaDon->thanh_tien;
							}
							$hoaDonHocPhi->updateAttributes(['tong_tien' => $tong]);
						}
					}
					$transaction->commit();
				} catch (\Exception $exception) {
					echo '<pre>';
					print_r($exception);
					die();
					$transaction->rollBack();
				}
			}
		}
	}
}