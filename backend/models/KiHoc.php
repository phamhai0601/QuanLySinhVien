<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    9/6/2021
 * @time    8:26 AM
 */

namespace backend\models;
class KiHoc extends \common\models\KiHoc {
	/**
	 * {@inheritdoc}
	 */
	public function rules()
	{
		return [
			[['ma_ki_hoc', 'tg_bat_dau', 'tg_ket_thuc',], 'required'],
			[['tg_bat_dau', 'tg_ket_thuc', 'created_at'], 'safe'],
			[['ma_ki_hoc'], 'string', 'max' => 255],
		];
	}
}