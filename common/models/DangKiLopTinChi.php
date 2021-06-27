<?php

namespace common\models;

use common\component\Model;
use Yii;

/**
 * This is the model class for table "dang_ki_lop_tin_chi".
 *
 * @property int       $id
 * @property string    $ma_lop_tin_chi
 * @property int       $tg_bat_dau
 * @property int       $tg_ket_thuc
 * @property int       $tinh_trang
 * @property int       $created_at
 *
 * @property LopTinChi $lopTinChi
 */
class DangKiLopTinChi extends Model
{
	const TRANGTHAI_SAP_MO = 0;
	const TRANGTHAI_MO = 1;
	const TRANGTHAI_DONG = 2;

	const TRANGTHAI_LABEl = [
		self::TRANGTHAI_DONG   => 'danger',
		self::TRANGTHAI_SAP_MO => 'primary',
		self::TRANGTHAI_MO     => 'success',
	];

	const TRANGTHAI = [
		self::TRANGTHAI_DONG   => 'Đóng',
		self::TRANGTHAI_SAP_MO => 'Sắp mở',
		self::TRANGTHAI_MO     => 'Mở',
	];



    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'dang_ki_lop_tin_chi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
	        [
		        [
			        'ma_lop_tin_chi',
			        'tg_bat_dau',
			        'tg_ket_thuc',
			        'tinh_trang',
			        'created_at',
		        ],
		        'required',
	        ],
	        [
		        [
			        'tg_bat_dau',
			        'tg_ket_thuc',
			        'tinh_trang',
			        'created_at',
		        ],
		        'integer',
	        ],
	        [
		        'ma_lop_tin_chi',
		        'unique',
	        ],
	        [
		        ['ma_lop_tin_chi'],
		        'string',
		        'max' => 255,
	        ],
        ];
    }

	/**
	 * {@inheritdoc}
	 */
	public function attributeLabels() {
		return [
			'id'             => 'ID',
			'ma_lop_tin_chi' => 'Mã lớp tín chỉ',
			'tg_bat_dau'     => 'Thời gian bắt đầu',
			'tg_ket_thuc'    => 'Thời gian kết thúc',
			'tinh_trang'     => 'Trình trạng',
			'created_at'     => 'Created At',
		];
	}

	public function getLopTinChi() {
		return $this->hasOne(LopTinChi::class, [
			'ten_lop' => 'ma_lop_tin_chi',
		]);
	}
}
