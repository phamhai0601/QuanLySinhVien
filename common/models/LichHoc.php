<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "lich_hoc".
 *
 * @property int $id
 * @property int $ma_lop
 * @property string $ngay_hoc
 * @property string $gio_hoc
 * @property int $created_at
 */
class LichHoc extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'lich_hoc';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['ma_lop', 'ngay_hoc', 'gio_hoc', 'created_at'], 'required'],
            [['ma_lop', 'created_at'], 'integer'],
            [['ngay_hoc'], 'string', 'max' => 255],
            [['gio_hoc'], 'string', 'max' => 11],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ma_lop' => 'Ma Lop',
            'ngay_hoc' => 'Ngay Hoc',
            'gio_hoc' => 'Gio Hoc',
            'created_at' => 'Created At',
        ];
    }
}
