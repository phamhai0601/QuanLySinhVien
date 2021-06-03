<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "sinh_vien".
 *
 * @property int $id
 * @property string $ten
 * @property string $que_quan
 * @property string $gioi_tinh
 * @property int $tg_nhap_hoc
 * @property int $cmnd
 * @property int $created_at
 * @property int $Updated_at
 */
class SinhVien extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'sinh_vien';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'ten', 'que_quan', 'gioi_tinh', 'tg_nhap_hoc', 'cmnd', 'created_at', 'Updated_at'], 'required'],
            [['id', 'tg_nhap_hoc', 'cmnd', 'created_at', 'Updated_at'], 'integer'],
            [['gioi_tinh'], 'string'],
            [['ten', 'que_quan'], 'string', 'max' => 255],
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
            'ten' => 'Ten',
            'que_quan' => 'Que Quan',
            'gioi_tinh' => 'Gioi Tinh',
            'tg_nhap_hoc' => 'Tg Nhap Hoc',
            'cmnd' => 'Cmnd',
            'created_at' => 'Created At',
            'Updated_at' => 'Updated At',
        ];
    }
}
