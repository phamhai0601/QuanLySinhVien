<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "dang_ki_lop_tin_chi".
 *
 * @property int $id
 * @property int $ma_lop_tin_chi
 * @property int $tg_bat_dau
 * @property int $tg_ket_thuc
 * @property int $tinh_trang
 * @property int $created_at
 */
class DangKiLopTinChi extends \yii\db\ActiveRecord
{
	const TRANGTHAI_SAP_MO = 0;
	const TRANGTHAI_MO = 1;
	const TRANGTHAI_DONG = 2;

	const TRANGTHAI = [
		self::TRANGTHAI_DONG => 'Đóng',
		self::TRANGTHAI_SAP_MO => 'Sắp mở',
		self::TRANGTHAI_DONG => 'Đóng'
	];


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'dang_ki_lop_tin_chi';
    }

    /**
     * {@inheritdoc}
     */
	public function rules()
	{
		return [
			[['ma_lop_tin_chi', 'tg_bat_dau', 'tg_ket_thuc', 'tinh_trang', 'created_at'], 'required'],
			[['ma_lop_tin_chi', 'tg_bat_dau', 'tg_ket_thuc', 'tinh_trang', 'created_at'], 'integer'],
		];
	}

    /**
     * {@inheritdoc}
     */
	public function attributeLabels()
	{
		return [
			'id' => 'ID',
			'ma_lop_tin_chi' => 'Mã lớp tín chỉ',
			'tg_bat_dau' => 'Thời gian bắt đầu',
			'tg_ket_thuc' => 'Thời gian kết thúc',
			'tinh_trang' => 'Tình trạng',
			'created_at' => 'Created At',
		];
	}
}
