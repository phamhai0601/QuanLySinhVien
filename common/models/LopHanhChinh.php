<?php

namespace common\models;

/**
 * This is the model class for table "lop_hanh_chinh".
 *
 * @property int $id
 * @property string $ma_lop
 * @property int $ma_giang_vien
 * @property int $khoa_hoc
 * @property int $created_at
 *
 * @property GiangVien $giangVien
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
            'ma_lop' => 'Mã lớp',
            'ma_giang_vien' => 'Mã giảng viên',
            'khoa_hoc' => 'Khóa học',
            'created_at' => 'Created At',
        ];
    }

    public function beforeSave($insert) {
	    $this->created_at = time();
	    return parent::beforeSave($insert);
    }

    public function getGiangVien(){
	    return $this->hasOne(GiangVien::class, ['id' => 'ma_giang_vien']);
    }
}
