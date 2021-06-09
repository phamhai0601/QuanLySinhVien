<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "dang_ki_lop_tin_chi".
 *
 * @property int $id
 * @property int $ma_lop_tin_chi
 * @property int $ngay_dang_ki
 * @property int $tinh_trang
 * @property int $created_at
 */
class DangKiLopTinChi extends \yii\db\ActiveRecord
{
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
            [['id', 'ma_lop_tin_chi', 'ngay_dang_ki', 'tinh_trang', 'created_at'], 'required'],
            [['id', 'ma_lop_tin_chi', 'ngay_dang_ki', 'tinh_trang', 'created_at'], 'integer'],
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
            'ma_lop_tin_chi' => 'Ma Lop Tin Chi',
            'ngay_dang_ki' => 'Ngay Dang Ki',
            'tinh_trang' => 'Tinh Trang',
            'created_at' => 'Created At',
        ];
    }
}
