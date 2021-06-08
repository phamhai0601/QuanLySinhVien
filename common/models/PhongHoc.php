<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "phong_hoc".
 *
 * @property int $id
 * @property string $ten
 * @property int $created_at
 */
class PhongHoc extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'phong_hoc';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ten', 'created_at'], 'required'],
            [['created_at'], 'integer'],
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
            'created_at' => 'Created At',
        ];
    }
}
