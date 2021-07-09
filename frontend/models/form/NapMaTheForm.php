<?php

use common\component\Form;

/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    10/7/2021
 * @time    12:54 AM
 */
class NapMaTheForm extends Form {

	public $code;

	public function rules() {
		return [
			[
				['code'],
				'required',
			],
		];
	}

	public function nap(){
		if(!$this->validate()){
			return false;
		}
		echo '<pre>';
		print_r($this);
		die();
	}
}