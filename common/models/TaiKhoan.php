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
 * @property int $occ
 * @property string|null $dich_vu
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
            [['email', 'ma_thong_tin', 'mat_khau', 'created_at'], 'required'],
            [['ma_thong_tin', 'occ', 'created_at'], 'integer'],
            [['email', 'mat_khau', 'dich_vu'], 'string', 'max' => 255],
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
            'occ' => 'Occ',
            'dich_vu' => 'Dich Vu',
            'created_at' => 'Created At',
        ];
    }
}
