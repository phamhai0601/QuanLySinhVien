<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "lich_hoc".
 *
 * @property int $id
 * @property int $ma_lop
 * @property int $thoi_gian_hoc
 * @property int $phong_hoc
 * @property int $created_at
 */
class LichHoc extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'lich_hoc';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'ma_lop', 'thoi_gian_hoc', 'phong_hoc', 'created_at'], 'required'],
            [['id', 'ma_lop', 'thoi_gian_hoc', 'phong_hoc', 'created_at'], 'integer'],
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
            'ma_lop' => 'Ma Lop',
            'thoi_gian_hoc' => 'Thoi Gian Hoc',
            'phong_hoc' => 'Phong Hoc',
            'created_at' => 'Created At',
        ];
    }
}
