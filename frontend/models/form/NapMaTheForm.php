<?php

namespace frontend\models\form;

use common\component\Form;
use common\models\MaThe;

/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    10/7/2021
 * @time    12:54 AM
 */
class NapMaTheForm extends Form {

	public $code;

	public function rules() {
		return [
			[
				['code'],
				'required',
			],
			[
				'code',
				function($attributes) {
					$maThe = MaThe::findOne(['ma_the' => $this->attributes]);
					if (!$maThe) {
						$this->addError($attributes, 'Mã thẻ không chính xácx.');
					} else {
						if ($maThe->trang_thai == MaThe::TRANGTHAI_DA_NAP) {
							$this->addError($attributes, 'Mã thẻ đã được sử dụng.');
						}
					}
				},
			],
		];
	}

	public function nap() {
		if (!$this->validate()) {
			return false;
		}
		$maThe = MaThe::findOne(['ma_the' => $this->code]);
		$maThe->updateAttributes([
			'trang_thai'   => MaThe::TRANGTHAI_DA_NAP,
			'tg_nap'       => time(),
			'user_su_dung' => $this->user->id,
		]);
		$newOcc = $this->user->userOcc->occ + $maThe->theNap->occ;
		return $this->user->userOcc->updateAttributes(['occ' => $newOcc]);
	}
}
