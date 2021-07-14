<?php

namespace common\models;

use Yii;
use yii\base\BaseObject;

/**
 * This is the model class for table "hoa_don_hoc_phi".
 *
 * @property int $id
 * @property int $trang_thai
 * @property int $user_id
 * @property int $tong_tien
 * @property int $created_at
 * @property int $thoi_han
 */
class HoaDonHocPhi extends \yii\db\ActiveRecord {

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
		return 'hoa_don_hoc_phi';
	}

	/**
	 * {@inheritdoc}
	 */
	public function rules() {
		return [
			[
				[
					'trang_thai',
					'user_id',
					'tong_tien',
					'created_at',
					'thoi_han',
				],
				'required',
			],
			[
				[
					'trang_thai',
					'user_id',
					'tong_tien',
					'created_at',
					'thoi_han',
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
			'id'         => 'ID',
			'trang_thai' => 'Trang Thai',
			'user_id'    => 'User ID',
			'tong_tien'  => 'Tong Tien',
			'created_at' => 'Created At',
			'thoi_han'   => 'Thoi Han',
		];
	}

	public static function newInstance(SinhVien $sinhVien, TgNopHocPhi $tgNopHocPhi) {
		$hoaDonHocPhi             = new HoaDonHocPhi();
		$hoaDonHocPhi->trang_thai = HoaDonHocPhi::STATUS_PENDING;
		$hoaDonHocPhi->created_at = time();
		$hoaDonHocPhi->user_id    = $sinhVien->id;
		$hoaDonHocPhi->thoi_han   = $tgNopHocPhi->id;
		$hoaDonHocPhi->tong_tien  = 0;
		if ($hoaDonHocPhi->save()) {
			return $hoaDonHocPhi;
		}
		return false;
	}
}
