<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    6/5/2021
 * @time    9:57 PM
 */

namespace backend\models;
class LopHanhChinh extends \common\models\LopHanhChinh {
	public function rules()
	{
		return [
			[['ma_lop', 'ma_giang_vien', 'khoa_hoc'], 'required'],
			[['ma_giang_vien', 'khoa_hoc', 'created_at'], 'integer'],
			[['ma_lop'], 'string', 'max' => 255],
		];
	}
}
