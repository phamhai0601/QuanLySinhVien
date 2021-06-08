<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "mon_hoc".
 *
 * @property int $id
 * @property string $ten_mon_hoc
 * @property string $mieu_ta
 * @property int $ma_bo_mon
 * @property int $tin_chi
 * @property int|null $dieu_kien
 * @property int $created_at
 *
 * @property BoMon $boMon
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
            [['ten_mon_hoc', 'ma_bo_mon', 'tin_chi', 'dieu_kien', 'created_at'], 'required'],
            [['ma_bo_mon', 'tin_chi', 'dieu_kien', 'created_at'], 'integer'],
            [['ten_mon_hoc'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ten_mon_hoc' => 'Tên môn học',
            'mieu_ta' => 'Miêu tả',
            'ma_bo_mon' => 'Bộ môn',
            'tin_chi' => 'Tín chỉ',
            'dieu_kien' => 'Điều kiện',
            'created_at' => 'Created At',
        ];
    }

    public function beforeSave($insert) {
	    // TODO: Change the auto generated stub
	    $this->created_at = time();
	    return parent::beforeSave($insert);
    }

    public function getBoMon(){
	    return $this->hasOne(BoMon::class, ['id' => 'ma_bo_mon']);
    }
}
