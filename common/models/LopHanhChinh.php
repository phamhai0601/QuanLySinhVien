<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "lop_hanh_chinh".
 *
 * @property int $id
 * @property string $ten
 * @property int $khoa_hoc
 * @property int $created_at
 */
class LopHanhChinh extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'lop_hanh_chinh';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'ten', 'khoa_hoc', 'created_at'], 'required'],
            [['id', 'khoa_hoc', 'created_at'], 'integer'],
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
            'khoa_hoc' => 'Khoa Hoc',
            'created_at' => 'Created At',
        ];
    }
}
