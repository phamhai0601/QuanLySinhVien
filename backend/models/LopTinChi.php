<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    6/5/2021
 * @time    9:58 PM
 */

namespace backend\models;
class LopTinChi extends \common\models\LopTinChi {
	public $lich_dang_ky;
	public function rules() {
		return [
			[
				[
					'ma_mon_hoc',
					'ma_giang_vien',
					'ma_ki_hoc',
					'ma_phong_hoc',
					'sv_toi_thieu',
					'sv_toi_da',
				],
				'required',
			],
			[
				[
					'ma_giang_vien',
					'ma_ki_hoc',
					'ma_phong_hoc',
					'sv_toi_thieu',
					'sv_toi_da',
					'created_at',
				],
				'integer',
			],
			[
				[
					'ten_lop',
					'ma_mon_hoc',
				],
				'string',
				'max' => 255,
			],
		];
	}
}
