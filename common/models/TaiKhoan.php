<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tai_khoan".
 *
 * @property int $id
 * @property string $email
 * @property int $ma_thong_tin
 * @property string $mat_khau
 * @property int $created_at
 */
class TaiKhoan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tai_khoan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'email', 'ma_thong_tin', 'mat_khau', 'created_at'], 'required'],
            [['id', 'ma_thong_tin', 'created_at'], 'integer'],
            [['email', 'mat_khau'], 'string', 'max' => 255],
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
            'email' => 'Email',
            'ma_thong_tin' => 'Ma Thong Tin',
            'mat_khau' => 'Mat Khau',
            'created_at' => 'Created At',
        ];
    }
}
