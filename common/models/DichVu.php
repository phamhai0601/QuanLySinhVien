<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "dich_vu".
 *
 * @property int $id
 * @property string $ten
 * @property string $full_name
 * @property int $gia
 * @property int $han_su_dung
 * @property int $created_at
 */
class DichVu extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'dich_vu';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ten', 'full_name', 'gia', 'han_su_dung', 'created_at'], 'required'],
            [['gia', 'han_su_dung', 'created_at'], 'integer'],
            [['ten', 'full_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ten' => 'Mã dịch vụ',
            'full_name' => 'Tên dich vụ',
            'gia' => 'Giá tiền',
            'han_su_dung' => 'Thời hạn dịch vụ',
            'created_at' => 'Created At',
        ];
    }
}
