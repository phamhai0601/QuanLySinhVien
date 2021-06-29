<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "lich_thi".
 *
 * @property int       $id
 * @property string    $ma_lop_tin_chi
 * @property int       $tg_thi
 * @property int       $ma_phong
 * @property int       $ma_giang_vien
 * @property int       $created_at
 * @property PhongHoc  $phongHoc
 * @property GiangVien $giangVien
 * @property LopTinChi $lopTinChi
 */
class LichThi extends \yii\db\ActiveRecord {

	/**
	 * {@inheritdoc}
	 */
	public static function tableName() {
		return 'lich_thi';
	}

	/**
	 * {@inheritdoc}
	 */
	public function rules() {
		return [
			[
				[
					'ma_lop_tin_chi',
					'tg_thi',
					'ma_phong',
					'ma_giang_vien',
				],
				'required',
			],
			[
				[
					'ma_phong',
					'ma_giang_vien',
					'created_at',
				],
				'integer',
			],
			[
				['tg_thi',],
				'safe',
			],
			[
				['ma_lop_tin_chi'],
				'string',
				'max' => 255,
			],
		];
	}

	/**
	 * {@inheritdoc}
	 */
	public function attributeLabels() {
		return [
			'id'             => 'ID',
			'ma_lop_tin_chi' => 'Mã lớp/DS thi',
			'tg_thi'         => 'Thời gian thi',
			'ma_phong'       => 'Phòng thi',
			'ma_giang_vien'  => 'Giám thị coi thi',
			'created_at'     => 'Created At',
		];
	}

	public function beforeSave($insert) {
		$this->tg_thi     = strtotime($this->tg_thi);
		$this->created_at = time();
		return parent::beforeSave($insert);
	}

	/**
	 * Nhận thông tin phòng thi.
	 * @return \yii\db\ActiveQuery
	 */
	public function getPhongHoc() {
		return $this->hasOne(PhongHoc::class, ['id' => 'ma_phong']);
	}

	/**
	 * Nhận thông tin giảng viên.
	 * @return \yii\db\ActiveQuery
	 */
	public function getGiangVien() {
		return $this->hasOne(GiangVien::class, ['id' => 'ma_giang_vien']);
	}

	/**
	 * Nhận thông tin lớp tín chỉ.
	 * @return \yii\db\ActiveQuery
	 */
	public function getLopTinChi() {
		return $this->hasOne(LopTinChi::class, ['ten_lop' => 'ma_lop_tin_chi']);
	}
}
