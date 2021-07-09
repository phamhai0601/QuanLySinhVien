<?php

namespace common\models;

use common\component\Model;

/**
 * This is the model class for table "hoa_don".
 *
 * @property int         $id
 * @property int         $ma_the_nap
 * @property int         $user_tao_hd
 * @property int         $status
 * @property string|null $ma_giao_dich
 * @property string|null $ma_ma_the
 * @property int         $created_at
 *
 * @property User        $userHd
 * @property TheNap      $theNap
 * @property MaThe       $maThe
 *
 *
 */
class HoaDon extends Model {

	const STATUS_PENDING = 1;

	const STATUS_CANCEL  = 0;

	const STATUS_SUCCESS = 2;

	const STATUS         = [
		self::STATUS_CANCEL  => 'Cancel',
		self::STATUS_PENDING => 'Pending',
		self::STATUS_SUCCESS => 'Success',
	];

	const STATUS_LABEL   = [
		self::STATUS_CANCEL  => 'danger',
		self::STATUS_PENDING => 'warning',
		self::STATUS_SUCCESS => 'success',
	];

	/**
	 * {@inheritdoc}
	 */
	public static function tableName() {
		return 'hoa_don';
	}

	/**
	 * {@inheritdoc}
	 */
	public function rules() {
		return [
			[
				[
					'ma_the_nap',
					'user_tao_hd',
					'status',
					'created_at',
				],
				'required',
			],
			[
				[
					'ma_the_nap',
					'user_tao_hd',
					'status',
					'created_at',
				],
				'integer',
			],
			[
				[
					'ma_giao_dich',
					'ma_ma_the',
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
			'id'           => 'Oder ID',
			'ma_the_nap'   => 'Mã thẻ nạp',
			'user_tao_hd'  => 'Email',
			'status'       => 'Trạng thái',
			'ma_giao_dich' => 'Mã giao dịch',
			'ma_ma_the'    => 'Code',
			'created_at'   => 'Created At',
		];
	}

	/**
	 * Tạo hóa đơn mới.
	 * @param $ma_ma_the
	 * @param $user_id
	 *
	 * @return HoaDon|null
	 */
	public static function newIntance($ma_ma_the, $user_id) {
		$hoaDon              = new HoaDon();
		$hoaDon->ma_the_nap  = $ma_ma_the;
		$hoaDon->user_tao_hd = $user_id;
		$hoaDon->status      = self::STATUS_PENDING;
		$hoaDon->created_at  = time();
		if ($hoaDon->save()) {
			return $hoaDon;
		}
		return null;
	}

	public function getUserHd() {
		return $this->hasOne(User::class, ['id' => 'user_tao_hd']);
	}

	public function getTheNap() {
		return $this->hasOne(TheNap::class, ['id' => 'ma_the_nap']);
	}

	public function getMaThe() {
		return $this->hasOne(MaThe::class, ['id' => 'ma_ma_the']);
	}
}
