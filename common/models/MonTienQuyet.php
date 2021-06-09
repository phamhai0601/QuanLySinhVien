<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "mon_tien_quyet".
 *
 * @property int $id
 * @property int $ma_bo_mon
 * @property string $mon_tien_quyet
 * @property int $created_at
 */
class MonTienQuyet extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'mon_tien_quyet';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ma_bo_mon', 'mon_tien_quyet', 'created_at'], 'required'],
            [['ma_bo_mon', 'created_at'], 'integer'],
            [['mon_tien_quyet'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ma_bo_mon' => 'Ma Bo Mon',
            'mon_tien_quyet' => 'Mon Tien Quyet',
            'created_at' => 'Created At',
        ];
    }
}
