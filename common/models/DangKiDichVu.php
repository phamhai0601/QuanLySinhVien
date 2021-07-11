<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "dang_ki_dich_vu".
 *
 * @property int $id
 * @property int $ma_tai_khoan
 * @property int $han_su_dung
 * @property int $ma_dich_vu
 * @property int $trang_thai
 * @property int $created_at
 */
class DangKiDichVu extends \yii\db\ActiveRecord {

	const STATUS_CLOSE  = 0;

	const STATUS_ACTIVE = 1;

	/**
	 * {@inheritdoc}
	 */
	public static function tableName() {
		return 'dang_ki_dich_vu';
	}

	/**
	 * {@inheritdoc}
	 */
	public function rules() {
		return [
			[
				[
					'ma_tai_khoan',
					'han_su_dung',
					'ma_dich_vu',
					'trang_thai',
					'created_at',
				],
				'required',
			],
			[
				[
					'ma_tai_khoan',
					'han_su_dung',
					'ma_dich_vu',
					'trang_thai',
					'created_at',
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
			'id'           => 'ID',
			'ma_tai_khoan' => 'Ma Tai Khoan',
			'han_su_dung'  => 'Han Su Dung',
			'ma_dich_vu'   => 'Ma Dich Vu',
			'trang_thai'   => 'Trang Thai',
			'created_at'   => 'Created At',
		];
	}
}
