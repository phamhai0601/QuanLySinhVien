<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "lich_hoc".
 * Sẽ xóa $gio_hoc.
 * @property int     $id
 * @property string  $ma_lop_tin_chi
 * @property int     $ngay_hoc
 * @property int     $gio_hoc
 * @property int     $created_at
 *
 * @property NgayHoc $ngayHoc
 * @property GioHoc  $gioHoc
 * @property LopTinChi  $lopTinChi
 *
 */
class LichHoc extends \yii\db\ActiveRecord {

	/**
	 * {@inheritdoc}
	 */
	public static function tableName() {
		return 'lich_hoc';
	}

	/**
	 * {@inheritdoc}
	 */
	public function rules() {
		return [
			[
				[
					'ma_lop_tin_chi',
					'ngay_hoc',
					'gio_hoc',
					'created_at',
				],
				'required',
			],
			[
				[
					'gio_hoc',
					'created_at',
				],
				'integer',
			],
			['ngayHoc','safe'],
			[
				['ma_lop_tin_chi',],
				'string',
				'max' => 255,
			],
		];
	}

	/**
	 * @return \yii\db\ActiveQuery
	 */
	public function getNgayHoc(){
		return $this->hasOne(NgayHoc::class, ['id' => 'ngay_hoc']);
	}

	/**
	 * @return \yii\db\ActiveQuery
	 */
	public function getGioHoc() {
		return $this->hasOne(GioHoc::class, ['id' => 'gio_hoc']);
	}

	/**
	 * @return \yii\db\ActiveQuery
	 */
	public function getLopTinChi() {
		return $this->hasOne(LopTinChi::class, ['ten_lop' => 'ma_lop_tin_chi']);
	}
}
