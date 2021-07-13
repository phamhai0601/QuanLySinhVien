<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "tg_nop_hoc_phi".
 *
 * @property int $id
 * @property int $tg_bat_dau
 * @property int $tg_ket_thuc
 * @property int $ki_hoc
 * @property int $id_lop_hoc
 * @property int $created_at
 */
class TgNopHocPhi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tg_nop_hoc_phi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tg_bat_dau', 'tg_ket_thuc', 'ki_hoc', 'id_lop_hoc', 'created_at'], 'required'],
            [['tg_bat_dau', 'tg_ket_thuc', 'ki_hoc', 'id_lop_hoc', 'created_at'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tg_bat_dau' => 'Tg Bat Dau',
            'tg_ket_thuc' => 'Tg Ket Thuc',
            'ki_hoc' => 'Ki Hoc',
            'id_lop_hoc' => 'Id Lop Hoc',
            'created_at' => 'Created At',
        ];
    }
}
