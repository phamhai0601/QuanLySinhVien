<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "bo_mon".
 *
 * @property int $id
 * @property string $ten
 * @property string $mo_ta
 * @property int $created_at
 * @property int $updated_at
 */
class BoMon extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'bo_mon';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ten', 'mo_ta', 'created_at', 'updated_at'], 'required'],
            [['mo_ta'], 'string'],
            [['created_at', 'updated_at'], 'integer'],
            [['ten'], 'string', 'max' => 255],
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
            'mo_ta' => 'Mo Ta',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
