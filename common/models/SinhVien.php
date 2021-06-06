<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "sinh_vien".
 *
 * @property int $id
 * @property string $ten
 * @property string|null $email
 * @property int|null $lop_hanh_chinh
 * @property string $que_quan
 * @property int $gioi_tinh
 * @property int $tg_nhap_hoc
 * @property string $cmnd
 * @property int $created_at
 * @property int $updated_at
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
            [['ten', 'que_quan', 'tg_nhap_hoc', 'cmnd', 'created_at', 'updated_at'], 'required'],
            [['lop_hanh_chinh', 'gioi_tinh', 'tg_nhap_hoc', 'created_at', 'updated_at'], 'integer'],
            [['ten', 'email', 'que_quan', 'cmnd'], 'string', 'max' => 255],
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
            'email' => 'Email',
            'lop_hanh_chinh' => 'Lop Hanh Chinh',
            'que_quan' => 'Que Quan',
            'gioi_tinh' => 'Gioi Tinh',
            'tg_nhap_hoc' => 'Tg Nhap Hoc',
            'cmnd' => 'Cmnd',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
