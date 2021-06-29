<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "the_nap".
 *
 * @property int $id
 * @property string $name
 * @property int $gia_tien
 * @property int $occ
 * @property string $img
 * @property int $created_at
 */
class TheNap extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'the_nap';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'gia_tien', 'occ', 'img', 'created_at'], 'required'],
            [['gia_tien', 'occ', 'created_at'], 'integer'],
            [['name', 'img'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'gia_tien' => 'Gia Tien',
            'occ' => 'Occ',
            'img' => 'Img',
            'created_at' => 'Created At',
        ];
    }
}
