<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    8/6/2021
 * @time    10:53 PM
 */

namespace backend\models;
class MonHoc extends \common\models\MonHoc {
	public function rules()
	{
		return [
			[['ten_mon_hoc','ma_bo_mon', 'tin_chi'], 'required'],
			[['mieu_ta'], 'string'],
			[['ma_bo_mon', 'tin_chi', 'dieu_kien'], 'integer'],
			[['ten_mon_hoc'], 'string', 'max' => 255],
			[['created_at','mieu_ta'],'safe'],
		];
	}
}