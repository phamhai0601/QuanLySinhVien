<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "mon_hoc".
 *
 * @property int $id
 * @property string $ten
 * @property int $gia
 * @property int $han_su_dung
 * @property int $created_at
 */
class MonHoc extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'mon_hoc';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'ten', 'gia', 'han_su_dung', 'created_at'], 'required'],
            [['id', 'gia', 'han_su_dung', 'created_at'], 'integer'],
            [['ten'], 'string', 'max' => 255],
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
            'ten' => 'Ten',
            'gia' => 'Gia',
            'han_su_dung' => 'Han Su Dung',
            'created_at' => 'Created At',
        ];
    }
}
