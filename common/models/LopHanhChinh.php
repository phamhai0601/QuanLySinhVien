<?php

namespace common\models;

use Yii;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "lop_hanh_chinh".
 *
 * @property int $id
 * @property string $ma_lop
 * @property int $ma_giang_vien
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
            [['ma_lop', 'ma_giang_vien', 'khoa_hoc', 'created_at'], 'required'],
            [['ma_giang_vien', 'khoa_hoc', 'created_at'], 'integer'],
            [['ma_lop'], 'string', 'max' => 255],
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
            'ma_giang_vien' => 'Ma Giang Vien',
            'khoa_hoc' => 'Khoa Hoc',
            'created_at' => 'Created At',
        ];
    }

    public function beforeSave($insert) {
	    $this->created_at = time();
	    return parent::beforeSave($insert);
    }
}
