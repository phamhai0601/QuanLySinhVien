<?php

namespace common\models;

use common\helper\StringHelper;
use Yii;

/**
 * This is the model class for table "ma_the".
 *
 * @property int    $id
 * @property string $ma_the
 * @property int    $ma_the_nap
 * @property int    $trang_thai
 * @property int    $created_at
 */
class MaThe extends \yii\db\ActiveRecord {

	const TRANGTHAI_CHUANAP = 0;

	const TRANGTHAI_DANAP   = 1;

	const TRANGTHAI         = [
		self::TRANGTHAI_CHUANAP => 'Chưa nạp',
		self::TRANGTHAI_DANAP   => 'Đã nạp',
	];

	const TRANGTHAI_LABEL   = [
		self::TRANGTHAI_CHUANAP => 'default',
		self::TRANGTHAI_DANAP   => 'success',
	];

	/**
	 * {@inheritdoc}
	 */
	public static function tableName() {
		return 'ma_the';
	}

	/**
	 * {@inheritdoc}
	 */
	public function rules() {
		return [
			[
				[
					'ma_the',
					'ma_the_nap',
					'trang_thai',
					'created_at',
				],
				'required',
			],
			[
				[
					'ma_the_nap',
					'trang_thai',
					'created_at',
				],
				'integer',
			],
			[
				['ma_the'],
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
			'id'         => 'ID',
			'ma_the'     => 'Ma The',
			'ma_the_nap' => 'Ma The Nap',
			'trang_thai' => 'Trang Thai',
			'created_at' => 'Created At',
		];
	}

	/**
	 * Tạo một mã thẻ dựa trên thẻ nạp.
	 *
	 * @param TheNap $theNap
	 *
	 * @return MaThe|null
	 */
	public function newIntance(TheNap $theNap) {
		$maThe             = new MaThe();
		$maThe->ma_the     = StringHelper::radomString(10);
		$maThe->ma_the_nap = $theNap->id;
		$maThe->trang_thai = self::TRANGTHAI_CHUANAP;
		$maThe->created_at = time();
		if ($maThe->save()) {
			return $maThe;
		}
		return null;
	}
}
