<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "giang_vien".
 *
 * @property int $id
 * @property string $ten
 * @property string $hoc_van
 * @property string $chuyen_nganh
 * @property string $que_quan
 * @property int $ma_lop_hanh_chinh
 * @property int $created_at
 */
class GiangVien extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'giang_vien';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'ten', 'hoc_van', 'chuyen_nganh', 'que_quan', 'ma_lop_hanh_chinh', 'created_at'], 'required'],
            [['id', 'ma_lop_hanh_chinh', 'created_at'], 'integer'],
            [['hoc_van', 'chuyen_nganh'], 'string'],
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
            'hoc_van' => 'Hoc Van',
            'chuyen_nganh' => 'Chuyen Nganh',
            'que_quan' => 'Que Quan',
            'ma_lop_hanh_chinh' => 'Ma Lop Hanh Chinh',
            'created_at' => 'Created At',
        ];
    }
}
