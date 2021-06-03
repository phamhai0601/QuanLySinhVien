<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "dang_ki_dich_vu".
 *
 * @property int $id
 * @property int $ma_tai_khoan
 * @property int $ngay_dang_ki
 * @property int $ma_dich_vu
 * @property int $created_at
 */
class DangKiDichVu extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'dang_ki_dich_vu';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'ma_tai_khoan', 'ngay_dang_ki', 'ma_dich_vu', 'created_at'], 'required'],
            [['id', 'ma_tai_khoan', 'ngay_dang_ki', 'ma_dich_vu', 'created_at'], 'integer'],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ma_tai_khoan' => 'Ma Tai Khoan',
            'ngay_dang_ki' => 'Ngay Dang Ki',
            'ma_dich_vu' => 'Ma Dich Vu',
            'created_at' => 'Created At',
        ];
    }
}
