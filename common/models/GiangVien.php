<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "giang_vien".
 *
 * @property int $id
 * @property string $ten
 * @property string $hoc_van
 * @property int $ma_bo_mon
 * @property string $que_quan
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
            [['ten', 'hoc_van', 'ma_bo_mon', 'que_quan', 'created_at'], 'required'],
            [['hoc_van'], 'string'],
            [['ma_bo_mon', 'created_at'], 'integer'],
            [['ten', 'que_quan'], 'string', 'max' => 255],
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
            'ma_bo_mon' => 'Ma Bo Mon',
            'que_quan' => 'Que Quan',
            'created_at' => 'Created At',
        ];
    }
}
