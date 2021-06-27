<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "ki_hoc".
 *
 * @property int $id
 * @property string $ma_ki_hoc
 * @property int $tg_bat_dau
 * @property int $tg_ket_thuc
 * @property int $created_at
 */
class KiHoc extends \yii\db\ActiveRecord
{
	const KIHOC_MOT = 1;
	const KIHOC_HAI = 2;
	const KIHOC_BA = 3;
	const KIHOC_BON = 4;

	const KIHOC = [
		self::KIHOC_MOT => 'Kì 1',
		self::KIHOC_HAI => 'Kì 2',
		self::KIHOC_BA => 'Kì 3',
		self::KIHOC_BON => 'Kì 4',
	];
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ki_hoc';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
	    return [
		    [
			    [
				    'ma_ki_hoc',
				    'tg_bat_dau',
				    'tg_ket_thuc',
				    'created_at',
			    ],
			    'required',
		    ],
		    [
			    [
				    'tg_bat_dau',
				    'tg_ket_thuc',
				    'created_at',
			    ],
			    'integer',
		    ],
		    [
			    ['ma_ki_hoc'],
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
			'id'          => 'ID',
			'ma_ki_hoc'   => 'Kì học',
			'tg_bat_dau'  => 'Thời gian bắt đầu',
			'tg_ket_thuc' => 'Thời gian kết thúc',
			'created_at'  => 'Created At',
		];
	}

	public function beforeSave($insert) {
		$this->tg_bat_dau  = strtotime($this->tg_bat_dau);
		$this->tg_ket_thuc = strtotime($this->tg_ket_thuc);
		$this->created_at  = time();
		return parent::beforeSave($insert);
	}
}
