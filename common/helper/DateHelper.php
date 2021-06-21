<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    22/6/2021
 * @time    1:51 AM
 */

namespace common\helper;
class DateHelper {

	/**
	 * @param string $date
	 */
	public static function ShowWeekVN($date) {
		$result = $date;
		$datas = [
			'Monday'    => 'Thứ 2',
			'Tuesday'   => 'Thứ 3',
			'Wednesday' => 'Thứ 4',
			'Thursday'  => 'Thứ 5',
			'Friday'    => 'Thứ 6',
			'Saturday'  => 'Thứ 7',
			'Sunday'    => 'Chủ nhật',
		];
		foreach ($datas as $key => $data){
			$result = str_replace($key,$data,$date);
			if($result !== $date){
				return $result;
			}
		}
		return $result;

	}
}