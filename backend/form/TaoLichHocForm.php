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
use common\models\LichHoc;
use phpDocumentor\Reflection\Utils;
use yii\base\Model;

class TaoLichHocForm extends Model {
	public $ngay_hoc;
	public $gio_hoc;
	public $ma_lop_tin_chi;
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
				'ma_lop_tin_chi', 'safe'
			],
		];
	}

	public function save(){
		if(!$this->validate()){
			return false;
		}
		$lichHoc = new LichHoc();
		$lichHoc->ma_lop = $this->ma_lop_tin_chi;
		$lichHoc->ngay_hoc = $this->ngay_hoc;
		$lichHoc->gio_hoc = $this->gio_hoc;
		$lichHoc->created_at = time();
		if($lichHoc->save()){
			return  $lichHoc;
		}else{
			echo '<pre>';
			print_r($lichHoc->errors);
			die();
		}
		return false;

	}
}