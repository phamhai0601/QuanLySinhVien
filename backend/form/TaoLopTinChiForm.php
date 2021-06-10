<?php
namespace backend\form;
use backend\component\Form;
use backend\models\DangKiLopTinChi;
use kartik\daterange\DateRangeBehavior;

/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    10/6/2021
 * @time    9:42 PM
 */

class TaoLopTinChiForm extends Form {

	public $ma_lop_tin_chi;

	public $ngay_dang_ki;

	public $ngay_dang_ki_Start;

	public $ngay_dang_ki_End;

	public function behaviors() {
		return [
			[
				'class'              => DateRangeBehavior::class,
				'attribute'          => 'ngay_dang_ki',
				'dateStartAttribute' => 'ngay_dang_ki_Start',
				'dateEndAttribute'   => 'ngay_dang_ki_End',
			],
		];
	}

	public function rules() {
		return [
			[
				[
					'ma_lop_tin_chi',
					'ngay_dang_ki',
				],
				'required',
			],
		];
	}

	public function save(){
		if(!$this->validate()){
			return false;
		}

		$dangKiTinChi = new DangKiLopTinChi();
		$dangKiTinChi->ma_lop_tin_chi = $this->ma_lop_tin_chi;
		$dangKiTinChi->tg_bat_dau = $this->ngay_dang_ki_Start;
		$dangKiTinChi->tg_ket_thuc = $this->ngay_dang_ki_End;
		$dangKiTinChi->tinh_trang = DangKiLopTinChi::TRANGTHAI_SAP_MO;
		$dangKiTinChi->created_at = time();
		if($dangKiTinChi->save()){
			return $dangKiTinChi;
		}else{
			echo '<pre>';
			print_r($dangKiTinChi->errors);
			die();
		}
		return false;
	}

	public function attributeLabels()
	{
		return [
			'ma_lop_tin_chi' => 'Mã lớp tín chỉ',
			'ngay_dang_ki' => 'Ngày đăng kí',
		];
	}


}