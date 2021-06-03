<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "lop_tin_chi".
 *
 * @property int $id
 * @property string $ten
 * @property string $mon_hoc
 * @property int $lich_hoc
 * @property int $phong_hoc
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
            [['id', 'ten', 'mon_hoc', 'lich_hoc', 'phong_hoc', 'created_at'], 'required'],
            [['id', 'lich_hoc', 'phong_hoc', 'created_at'], 'integer'],
            [['ten', 'mon_hoc'], 'string', 'max' => 255],
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
            'mon_hoc' => 'Mon Hoc',
            'lich_hoc' => 'Lich Hoc',
            'phong_hoc' => 'Phong Hoc',
            'created_at' => 'Created At',
        ];
    }
}
