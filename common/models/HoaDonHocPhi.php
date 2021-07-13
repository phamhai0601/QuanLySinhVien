<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "hoa_don_hoc_phi".
 *
 * @property int $id
 * @property int $ngay_db_nop
 * @property int $ngay_kt_nop
 * @property int $trang_thai
 * @property int $user_id
 * @property int $tong_tien
 * @property int $created_at
 */
class HoaDonHocPhi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'hoa_don_hoc_phi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ngay_db_nop', 'ngay_kt_nop', 'trang_thai', 'user_id', 'tong_tien', 'created_at'], 'required'],
            [['ngay_db_nop', 'ngay_kt_nop', 'trang_thai', 'user_id', 'tong_tien', 'created_at'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ngay_db_nop' => 'Ngay Db Nop',
            'ngay_kt_nop' => 'Ngay Kt Nop',
            'trang_thai' => 'Trang Thai',
            'user_id' => 'User ID',
            'tong_tien' => 'Tong Tien',
            'created_at' => 'Created At',
        ];
    }
}
