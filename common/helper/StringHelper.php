<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    4/6/2021
 * @time    8:20 AM
 */
namespace common\helper;
class StringHelper {
	public static function radomStringCmnd($lengt){
		$numer='0123456789';
		$string = '';
		for ($i=0;$i<=$lengt;$i++){
			$string.=$numer[rand(0,9)];
		}
		return $string;
	}

	public static function radomString($lengt){
		$numer='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$string = '';
		for ($i=0;$i<=$lengt;$i++){
			$string.=$numer[rand(0,61)];
		}
		return $string;
	}
}