<?php

namespace common\models;

use common\component\Model;

/**
 * This is the model class for table "sv_dki_tin_chi".
 *
 * @property int       $id
 * @property int       $id_sinh_vien
 * @property string    $ma_lop_tin_chi
 * @property int       $created_at
 *
 * @property LopTinChi $lopTinChi
 */
class SvDkiTinChi extends Model {

	/**
	 * {@inheritdoc}
	 */
	public static function tableName() {
		return 'sv_dki_tin_chi';
	}

	/**
	 * {@inheritdoc}
	 */
	public function rules() {
		return [
			[
				[
					'id_sinh_vien',
					'ma_lop_tin_chi',
					'created_at',
				],
				'required',
			],
			[
				[
					'id_sinh_vien',
					'created_at',
				],
				'integer',
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
			'id_sinh_vien'   => 'Id Sinh Vien',
			'ma_lop_tin_chi' => 'Ma Lop Tin Chi',
			'created_at'     => 'Created At',
		];
	}

	/**
	 * @return \yii\db\ActiveQuery
	 */
	public function getLopTinChi() {
		return $this->hasOne(LopTinChi::class, ['ten_lop' => 'ma_lop_tin_chi']);
	}
}
