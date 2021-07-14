<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    14/7/2021
 * @time    12:02 AM
 */

namespace backend\form;

use backend\component\Form;
use Cassandra\Date;
use common\models\LopHanhChinh;
use common\models\TgNopHocPhi;

class TgNopHocPhiForm extends Form {

	public $tg_bat_dau;

	public $tg_ket_thuc;

	public $id_lop_hoc;

	public $ki_hoc;

	public function rules() {
		return [
			[
				[
					'tg_ket_thuc',
					'tg_bat_dau',
				],
				'required',
			],
			[
				[
					'id_lop_hoc',
					'ki_hoc',
				],
				'integer',
			],
			[
				[
					'tg_ket_thuc',
					'tg_bat_dau',
				],
				'safe',
			],
			[
				'tg_ket_thuc',
				'compare',
				'compareAttribute' => 'tg_bat_dau',
				'operator'         => '>',
				'type'             => 'date',
			],
		];
	}

	public function attributeLabels() {
		return [
			'tg_bat_dau'  => 'Thời gian bắt đầu nộp',
			'tg_ket_thuc' => 'Hạn chót nộp',
		];
	}

	public function save() {
		if (!$this->validate()) {
			return false;
		}
		$tgNopHocPhi              = new TgNopHocPhi();
		$tgNopHocPhi->tg_bat_dau  = strtotime($this->tg_bat_dau);
		$tgNopHocPhi->tg_ket_thuc = strtotime($this->tg_ket_thuc);
		$tgNopHocPhi->id_lop_hoc  = $this->id_lop_hoc;
		$tgNopHocPhi->ki_hoc      = $this->ki_hoc;
		$tgNopHocPhi->created_at  = time();
		if ($tgNopHocPhi->save()) {
			$lopHanhChinh = LopHanhChinh::findOne($tgNopHocPhi->id_lop_hoc);
			$lopHanhChinh->updateAttributes(['action' => LopHanhChinh::ACTION_CREATE_INVOICE]);
			return true;
		}
		return false;
	}
}