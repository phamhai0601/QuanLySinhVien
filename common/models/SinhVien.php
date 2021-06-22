<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "sinh_vien".
 *
 * @property int $id
 * @property string $ten
 * @property string|null $email
 * @property int|null $lop_hanh_chinh
 * @property string $que_quan
 * @property int $gioi_tinh
 * @property int $tg_nhap_hoc
 * @property string $cmnd
 * @property int $created_at
 * @property int $updated_at
 *
 * @property User $user
 * @property LopHanhChinh $lopHanhChinh
 */
class SinhVien extends \yii\db\ActiveRecord
{
	const GIOITINH_NAM = 0;
	const GIOITINH_NU = 1;

	const GIOTINH = [
		self::GIOITINH_NAM => 'Nam',
		self::GIOITINH_NU => 'Nữ',
	];


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'sinh_vien';
    }

    /**
     * {@inheritdoc}
     */
	public function rules()
	{
		return [
			[['ten', 'que_quan', 'tg_nhap_hoc', 'cmnd', 'created_at', 'updated_at'], 'required'],
			[['lop_hanh_chinh', 'gioi_tinh', 'tg_nhap_hoc', 'created_at', 'updated_at'], 'integer'],
			[['ten', 'email','que_quan', 'cmnd'], 'string', 'max' => 255],
		];
	}

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ten' => 'Tên',
            'email' => 'Email',
            'lop_hanh_chinh' => 'Lớp hành chính',
            'que_quan' => 'Quê quán',
            'gioi_tinh' => 'Giới tính',
            'tg_nhap_hoc' => 'Thời gian nhập học',
            'cmnd' => 'Cmnd',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

	/**
	 * @return \yii\db\ActiveQuery
	 */
	public function getUser(){
		return $this->hasOne(User::class, [
			'info_id' => 'id',
		]);
	}

	/**
	 * @return \yii\db\ActiveQuery
	 */
	public function getLopHanhChinh(){
		return $this->hasOne(LopHanhChinh::class,['id'=>'lop_hanh_chinh']);
	}
}
