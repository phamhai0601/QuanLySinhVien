<?php

namespace common\models;

use common\helper\StringHelper;
use Yii;

/**
 * This is the model class for table "ma_the".
 *
 * @property int      $id
 * @property string   $ma_the
 * @property int      $ma_the_nap
 * @property int      $trang_thai
 * @property int|null $tg_nap
 * @property int|null $user_su_dung
 * @property int      $created_at
 */
class MaThe extends \yii\db\ActiveRecord {

	const TRANGTHAI_CHUA_NAP = 0;

	const TRANGTHAI_DA_NAP   = 1;

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
					'tg_nap',
					'user_su_dung',
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
			'id'           => 'ID',
			'ma_the'       => 'Ma The',
			'ma_the_nap'   => 'Ma The Nap',
			'trang_thai'   => 'Trang Thai',
			'tg_nap'       => 'Tg Nap',
			'user_su_dung' => 'User Su Dung',
			'created_at'   => 'Created At',
		];
	}

	/**
	 * Tạo mã thẻ theo hóa đơn
	 *
	 * @param $id
	 *
	 * @return MaThe|null
	 */
	public static function newInstance($id) {
		$hoaDon            = HoaDon::findOne($id);
		$maThe             = new MaThe();
		$maThe->ma_the     = StringHelper::radomString(20);
		$maThe->ma_the_nap = $hoaDon->ma_the_nap;
		$maThe->trang_thai = self::TRANGTHAI_CHUA_NAP;
		$maThe->created_at = time();
		if ($maThe->save()) {
			$hoaDon->updateAttributes([
				'ma_ma_the' => $maThe->id,
				'status'    => HoaDon::STATUS_SUCCESS,
			]);
			return $maThe;
		}
		return null;
	}
}
