<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "ngay_hoc".
 *
 * @property int $id
 * @property string $ngay
 * @property int $created_at
 */
class NgayHoc extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ngay_hoc';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ngay', 'created_at'], 'required'],
            [['created_at'], 'integer'],
            [['ngay'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ngay' => 'Ngay',
            'created_at' => 'Created At',
        ];
    }
}
