<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "gio_hoc".
 *
 * @property int $id
 * @property string $gio_bat_dau
 * @property string $gio_ket_thuc
 * @property int $created_at
 */
class GioHoc extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'gio_hoc';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['gio_bat_dau', 'gio_ket_thuc', 'created_at'], 'required'],
            [['created_at'], 'integer'],
            [['gio_bat_dau', 'gio_ket_thuc'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'gio_bat_dau' => 'Gio Bat Dau',
            'gio_ket_thuc' => 'Gio Ket Thuc',
            'created_at' => 'Created At',
        ];
    }
}
