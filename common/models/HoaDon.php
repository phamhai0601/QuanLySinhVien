<?php

namespace common\models;

use common\component\Model;
use phpDocumentor\Reflection\Utils;
use Yii;

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
 * @property User        $user
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
		self::STATUS_PENDING => 'info',
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
			'id'           => 'ID',
			'ma_the_nap'   => 'Ma The Nap',
			'user_tao_hd'  => 'User Tao Hd',
			'status'       => 'Status',
			'ma_giao_dich' => 'Ma Giao Dich',
			'ma_ma_the'    => 'Ma Ma The',
			'created_at'   => 'Created At',
		];
	}

	/**
	 * Tạo hóa đơn mới.
	 *
	 * @param TheNap $theNap
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

	public function getUser() {
		return $this->hasOne(User::class, ['id' => 'user_tao_hd']);
	}
}
