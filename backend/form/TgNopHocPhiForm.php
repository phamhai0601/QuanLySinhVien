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
					'tg_ket_thuc',
					'tg_bat_dau',
					'id_lop_hoc',
					'ki_hoc',
				],
				'integer',
			],
		];
	}

	public function save() {
		if (!$this->validate()) {
			return false;
		}
	}
}