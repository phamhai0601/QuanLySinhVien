<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "sv_dki_tin_chi".
 *
 * @property int $id
 * @property int $id_sinh_vien
 * @property string $ma_lop_tin_chi
 * @property int $created_at
 */
class SvDkiTinChi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'sv_dki_tin_chi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_sinh_vien', 'ma_lop_tin_chi', 'created_at'], 'required'],
            [['id_sinh_vien', 'created_at'], 'integer'],
            [['ma_lop_tin_chi'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_sinh_vien' => 'Id Sinh Vien',
            'ma_lop_tin_chi' => 'Ma Lop Tin Chi',
            'created_at' => 'Created At',
        ];
    }
}
