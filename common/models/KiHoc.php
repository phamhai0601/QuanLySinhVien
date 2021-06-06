<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "ki_hoc".
 *
 * @property int $id
 * @property string $ma_ki_hoc
 * @property int $tg_bat_dau
 * @property int $tg_ket_thuc
 * @property int $nam_hoc
 * @property int $created_at
 */
class KiHoc extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ki_hoc';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ma_ki_hoc', 'tg_bat_dau', 'tg_ket_thuc', 'nam_hoc', 'created_at'], 'required'],
            [['tg_bat_dau', 'tg_ket_thuc', 'nam_hoc', 'created_at'], 'integer'],
            [['ma_ki_hoc'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ma_ki_hoc' => 'Ma Ki Hoc',
            'tg_bat_dau' => 'Tg Bat Dau',
            'tg_ket_thuc' => 'Tg Ket Thuc',
            'nam_hoc' => 'Nam Hoc',
            'created_at' => 'Created At',
        ];
    }
}
