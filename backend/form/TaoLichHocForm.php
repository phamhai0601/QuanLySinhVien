<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    13/6/2021
 * @time    7:26 PM
 */

namespace backend\form;
use backend\models\GioHoc;
use common\models\LichHoc;
use phpDocumentor\Reflection\Utils;
use yii\base\Model;

class TaoLichHocForm extends Model {

	public $ngay_hoc;

	public $gio_hoc;

	public $ma_lop_tin_chi = null;

	/**
	 * @var LichHoc
	 */
	public $_lichHoc = null;

	public function rules() {
		// TODO: Change the auto generated stub
		return [
			[
				[
					'ngay_hoc',
					'gio_hoc',
				],
				'required',
			],
			[
				[
					'ngay_hoc',
					'gio_hoc',
				],
				'safe',
			],
			[
				'ma_lop_tin_chi',
				'safe',
			],
		];
	}

	public function save() {
		//TODO die
		if (!$this->validate()) {
			return false;
		}
		$gioHoc                  = GioHoc::findOne($this->gio_hoc);
		$lichHoc                 = new LichHoc();
		$lichHoc->ma_lop_tin_chi = $this->ma_lop_tin_chi;
		$lichHoc->ngay_hoc       = strtotime($gioHoc->gio_bat_dau . ' ' . $this->ngay_hoc);
		$lichHoc->gio_hoc        = $this->gio_hoc;
		$lichHoc->created_at     = time();
		if ($lichHoc->save()) {
			return $lichHoc;
		} else {
			echo '<pre>';
			print_r($lichHoc->errors);
			die();
		}
		return false;
	}

	public function update() {
		if (!$this->validate()) {
			return false;
		}
		$gioHoc = GioHoc::findOne($this->gio_hoc);
		$row    = $this->_lichHoc->updateAttributes([
			'ngay_hoc' => strtotime($gioHoc->gio_bat_dau . ' ' . $this->ngay_hoc),
			'gio_hoc'  => $this->gio_hoc,
		]);
		if($row !== null){
			return true;
		}
		return false;
	}
}