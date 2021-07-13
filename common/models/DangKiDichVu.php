<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "dang_ki_dich_vu".
 *
 * @property int    $id
 * @property int    $ma_tai_khoan
 * @property int    $han_su_dung
 * @property int    $ma_dich_vu
 * @property int    $trang_thai
 * @property int    $created_at
 *
 * @property User   $user
 * @property DichVu $dichVu
 */
class DangKiDichVu extends \yii\db\ActiveRecord {

	const STATUS_ACTIVE = 1;

	const STATUS_CLOSE  = 0;

	const STATUS        = [
		self::STATUS_ACTIVE => 'Active',
		self::STATUS_CLOSE  => 'Close',
	];

	const STATUS_LABEL  = [
		self::STATUS_ACTIVE => 'success',
		self::STATUS_CLOSE  => 'danger',
	];

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
			'ma_tai_khoan' => 'Mã tài khoản',
			'han_su_dung'  => 'Hạn sử dụng',
			'ma_dich_vu'   => 'Mã dịch vụ',
			'trang_thai'   => 'Trạng thái',
			'created_at'   => 'Created At',
		];
	}

	/**
	 * @return \yii\db\ActiveQuery
	 */
	public function getUser() {
		return $this->hasOne(User::class, ['id' => 'ma_tai_khoan']);
	}

	public function getDichVu() {
		return $this->hasOne(DichVu::class, ['id' => 'ma_dich_vu']);
	}
}
