<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "chi_tiet_hoa_don".
 *
 * @property int $id
 * @property int $ma_hoa_don
 * @property int $ma_mon_hoc
 * @property int $tin_chi
 * @property int $don_gia
 * @property int $thanh_tien
 * @property int $created_at
 */
class ChiTietHoaDon extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'chi_tiet_hoa_don';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ma_hoa_don', 'ma_mon_hoc', 'tin_chi', 'don_gia', 'thanh_tien', 'created_at'], 'required'],
            [['ma_hoa_don', 'ma_mon_hoc', 'tin_chi', 'don_gia', 'thanh_tien', 'created_at'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ma_hoa_don' => 'Ma Hoa Don',
            'ma_mon_hoc' => 'Ma Mon Hoc',
            'tin_chi' => 'Tin Chi',
            'don_gia' => 'Don Gia',
            'thanh_tien' => 'Thanh Tien',
            'created_at' => 'Created At',
        ];
    }
}
