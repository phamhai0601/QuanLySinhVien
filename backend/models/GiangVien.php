<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    6/6/2021
 * @time    12:04 AM
 */

namespace backend\models;
class GiangVien extends \common\models\GiangVien {
	public function rules()
	{
		return [
			[['ten', 'hoc_van', 'ma_bo_mon', 'que_quan', 'created_at'], 'required'],
			[['id', 'ma_bo_mon', 'created_at'], 'integer'],
			[['hoc_van'], 'string'],
			[['ten', 'que_quan'], 'string', 'max' => 255],
			[['id'], 'unique'],
		];
	}
}
