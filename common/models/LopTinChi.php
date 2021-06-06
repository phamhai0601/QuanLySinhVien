<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "lop_tin_chi".
 *
 * @property int $id
 * @property string $ten_lop
 * @property string $ma_mon_hoc
 * @property int $ma_giang_vien
 * @property int $lich_hoc
 * @property int $ma_ki_hoc
 * @property int $ma_phong_hoc
 * @property int $created_at
 */
class LopTinChi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'lop_tin_chi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ten_lop', 'ma_mon_hoc', 'ma_giang_vien', 'lich_hoc', 'ma_ki_hoc', 'ma_phong_hoc', 'created_at'], 'required'],
            [['ma_giang_vien', 'lich_hoc', 'ma_ki_hoc', 'ma_phong_hoc', 'created_at'], 'integer'],
            [['ten_lop', 'ma_mon_hoc'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ten_lop' => 'Ten Lop',
            'ma_mon_hoc' => 'Ma Mon Hoc',
            'ma_giang_vien' => 'Ma Giang Vien',
            'lich_hoc' => 'Lich Hoc',
            'ma_ki_hoc' => 'Ma Ki Hoc',
            'ma_phong_hoc' => 'Ma Phong Hoc',
            'created_at' => 'Created At',
        ];
    }
}
