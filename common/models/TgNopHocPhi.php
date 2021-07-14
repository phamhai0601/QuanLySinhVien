<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tg_nop_hoc_phi".
 *
 * @property int $id
 * @property int $tg_bat_dau
 * @property int $tg_ket_thuc
 * @property int $ki_hoc
 * @property int $id_lop_hoc
 * @property int $created_at
 * @property int $status
 */
class TgNopHocPhi extends \yii\db\ActiveRecord {

	const STATUS_PENDING = 0;

	const STATUS_SUCCESS = 1;

	const STATUS         = [
		self::STATUS_PENDING => '<i class="fa fa-spinner fa-pulse fa-fw"></i> Pending',
		self::STATUS_SUCCESS => 'Success',
	];

	const STATUS_LABEL   = [
		self::STATUS_SUCCESS => 'success',
		self::STATUS_PENDING => 'warning',
	];

	/**
	 * {@inheritdoc}
	 */
	public static function tableName() {
		return 'tg_nop_hoc_phi';
	}

	/**
	 * {@inheritdoc}
	 */
	public function rules() {
		return [
			[
				[
					'tg_bat_dau',
					'tg_ket_thuc',
					'ki_hoc',
					'id_lop_hoc',
					'created_at',
				],
				'required',
			],
			[
				[
					'tg_bat_dau',
					'tg_ket_thuc',
					'ki_hoc',
					'id_lop_hoc',
					'created_at',
					'status',
				],
				'integer',
			],
		];
	}

	/**
	 * {@inheritdoc}
	 */
	public function attributeLabels() {
		return [
			'id'          => 'ID',
			'tg_bat_dau'  => 'Tg Bat Dau',
			'tg_ket_thuc' => 'Tg Ket Thuc',
			'ki_hoc'      => 'Ki Hoc',
			'id_lop_hoc'  => 'Id Lop Hoc',
			'created_at'  => 'Created At',
			'status'      => 'Status',
		];
	}
}
