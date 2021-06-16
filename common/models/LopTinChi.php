<?php

namespace common\models;


/**
 * This is the model class for table "lop_tin_chi".
 *
 * @property int             $id
 * @property string          $ten_lop
 * @property string          $ma_mon_hoc
 * @property int             $ma_giang_vien
 * @property int             $ma_ki_hoc
 * @property int             $ma_phong_hoc
 * @property int             $sv_toi_thieu
 * @property int             $sv_toi_da
 * @property int             $created_at
 *
 * @property MonHoc          $monHoc
 * @property GiangVien       $giangVien
 * @property KiHoc           $kiHoc
 * @property PhongHoc        $phongHoc
 * @property DangKiLopTinChi $lichDangKy
 * @property LichHoc         $lichHoc
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
			[
				[
					'ma_mon_hoc',
					'ma_giang_vien',
					'ma_ki_hoc',
					'ma_phong_hoc',
					'sv_toi_thieu',
					'sv_toi_da',
				],
				'required',
			],
			[
				[
					'ma_giang_vien',
					'ma_ki_hoc',
					'ma_phong_hoc',
					'sv_toi_thieu',
					'sv_toi_da',
					'created_at',
				],
				'integer',
			],
			[
				[
					'ten_lop',
					'ma_mon_hoc',
				],
				'string',
				'max' => 255,
			],
		];
	}

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
	        'id'            => 'ID',
	        'ten_lop'       => 'Tên lớp',
	        'ma_mon_hoc'    => 'Môn học',
	        'ma_giang_vien' => 'Giảng viên',
	        'ma_ki_hoc'     => 'Kì học',
	        'sv_toi_thieu'  => 'Sinh viên tối thiểu',
	        'sv_toi_da'     => 'Sinh viên tối đa',
	        'ma_phong_hoc'  => 'Phòng học',
	        'created_at'    => 'Created At',
        ];
    }

	public function getMonHoc() {
		return $this->hasOne(MonHoc::class, ['id' => 'ma_mon_hoc']);
	}

	public function getGiangVien() {
		return $this->hasOne(GiangVien::class, ['id'=>'ma_giang_vien']);
	}

	public function getKiHoc() {
		return $this->hasOne(KiHoc::class, ['id' => 'ma_ki_hoc',]);
	}

	public function getPhongHoc() {
		return $this->hasOne(PhongHoc::class, ['id' => 'ma_phong_hoc']);
	}

	public function getLichDangKy() {
		return $this->hasOne(DangKiLopTinChi::class, ['ma_lop_tin_chi' => 'ten_lop']);
	}

	public function getLichHoc() {
		return $this->hasOne(LichHoc::class, ['ma_lop' => 'id']);
	}

	public function beforeSave($insert) {
		// TODO: Change the auto generated stub
		$this->ten_lop    = $this->kiHoc->nam_hoc . $this->kiHoc->ma_ki_hoc . $this->monHoc->id . $this->giangVien->id . $this->phongHoc->ten;
		$this->created_at = time();
		return parent::beforeSave($insert);
	}

	public function beforeDelete() {
		$this->lichDangKy->delete();
		$this->lichHoc->delete();
		return parent::beforeDelete();
	}
}
