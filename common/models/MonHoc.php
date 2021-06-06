<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "mon_hoc".
 *
 * @property int $id
 * @property string $ten_mon_hoc
 * @property string $chuyen_nganh
 * @property int $tin_chi
 * @property int $dieu_kien
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
            [['ten_mon_hoc', 'chuyen_nganh', 'tin_chi', 'dieu_kien', 'created_at'], 'required'],
            [['tin_chi', 'dieu_kien', 'created_at'], 'integer'],
            [['ten_mon_hoc', 'chuyen_nganh'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ten_mon_hoc' => 'Ten Mon Hoc',
            'chuyen_nganh' => 'Chuyen Nganh',
            'tin_chi' => 'Tin Chi',
            'dieu_kien' => 'Dieu Kien',
            'created_at' => 'Created At',
        ];
    }
}
