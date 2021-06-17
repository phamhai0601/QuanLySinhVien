<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "lich_hoc".
 *
 * @property int     $id
 * @property string  $ma_lop_tin_chi
 * @property string  $ngay_hoc
 * @property string  $gio_hoc
 * @property int     $created_at
 *
 * @property NgayHoc $ngayHoc
 * @property GioHoc  $gioHoc
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
				['created_at'],
				'integer',
			],
			[
				[
					'ma_lop_tin_chi',
					'ngay_hoc',
				],
				'string',
				'max' => 255,
			],
			[
				['gio_hoc'],
				'string',
				'max' => 11,
			],
		];
	}

	/**
	 * {@inheritdoc}
	 */
	public function attributeLabels() {
		return [
			'id'             => 'ID',
			'ma_lop_tin_chi' => 'Ma Lop Tin Chi',
			'ngay_hoc'       => 'Ngay Hoc',
			'gio_hoc'        => 'Gio Hoc',
			'created_at'     => 'Created At',
		];
	}

	public function getNgayHoc() {
		return $this->hasOne(NgayHoc::class, ['id' => 'ngay_hoc']);
	}

	public function getGioHoc() {
		return $this->hasOne(GioHoc::class, ['id' => 'gio_hoc']);
	}
}
