<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "lop_hanh_chinh".
 *
 * @property int       $id
 * @property string    $ma_lop
 * @property int       $ma_giang_vien
 * @property int       $khoa_hoc
 * @property string    $action
 * @property int       $created_at
 *
 * @property GiangVien $giangVien
 */
class LopHanhChinh extends \yii\db\ActiveRecord {

	const ACTION_OFF            = "off";

	const ACTION_CREATE_INVOICE = "invoice";

	const ACTION                = [
		self::ACTION_OFF            => 'off',
		self::ACTION_CREATE_INVOICE => '<i class="fa fa-spinner fa-pulse fa-fw"></i> creating invoice',
	];

	const ACTION_LABEL          = [
		self::ACTION_OFF            => 'default',
		self::ACTION_CREATE_INVOICE => 'success',
	];

	/**
	 * {@inheritdoc}
	 */
	public static function tableName() {
		return 'lop_hanh_chinh';
	}

	/**
	 * {@inheritdoc}
	 */
	public function rules() {
		return [
			[
				[
					'ma_lop',
					'ma_giang_vien',
					'khoa_hoc',
					'created_at',
				],
				'required',
			],
			[
				[
					'ma_giang_vien',
					'khoa_hoc',
					'created_at',
				],
				'integer',
			],
			[
				[
					'ma_lop',
					'action',
				],
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
			'id'            => 'ID',
			'ma_lop'        => 'Ma Lop',
			'ma_giang_vien' => 'Ma Giang Vien',
			'khoa_hoc'      => 'Khoa Hoc',
			'action'        => 'Action',
			'created_at'    => 'Created At',
		];
	}

	public function beforeSave($insert) {
		$this->created_at = time();
		return parent::beforeSave($insert);
	}

	public function getGiangVien() {
		return $this->hasOne(GiangVien::class, ['id' => 'ma_giang_vien']);
	}
}
