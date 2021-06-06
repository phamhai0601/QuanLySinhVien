<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    4/6/2021
 * @time    1:15 AM
 */
namespace console\controllers;
use backend\models\GiangVien;
use common\models\BoMon;
use moonland\phpexcel\Excel;
use yii\console\Controller;

class TestController extends Controller {
	public function actionTestT() {
		$excel = new Excel();
		$data = $excel::import([
			'mode' => 'import',
			'fileName' => \Yii::getAlias('@console/runtime/data.xls'),
			'setFirstRecordAsKeys' => true, // if you want to set the keys of record column with first record, if it not set, the header with use the alphabet column on excel.
			'setIndexSheetByName' => true, // set this if your excel data with multiple worksheet, the index of array will be set with the sheet name. If this not set, the index will use numeric.
			'getOnlySheet' => 'sheet1', // you can set this property if you want to get the specified sheet from the excel data with multiple worksheet.
		]);
	}

	public function actionTestR(){
		$bomon = [
			'Cơ sở',
			'Công nghệ đa phương tiện',
			'Công nghệ phần mềm',
			'Hệ thống thôn tin',
			'Mạng và kỹ thuật máy tính'
		];

		foreach ($bomon as $item){
			$data = new Bomon();
			$data->ten = $item;
			$data->mo_ta = '...';
			$data->created_at= time();
			$data->updated_at= time();
			if($data->save()){
				echo 'add done '.$item.PHP_EOL;
			}
		}
	}

	public function actionThemGiangVien(){
		$data =[
			[
				'ten' => 'Lê Thị Thanh Thùy',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>1,
			],
			[
				'ten' => 'Trịnh Thị Xuân',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>1,
			],
			[
				'ten' => 'Nguyễn Ngọc Bích',
				'hoc_vi'=> 'Cử nhân',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>1,
			],
			[
				'ten' => 'Nguyễn Thúy Lan',
				'hoc_vi'=> 'Cử nhân',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>1,
			],
			[
				'ten' => 'Nguyễn Thùy Linh',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>1,
			],
			[
				'ten' => 'Đinh Thị Việt Nga',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>1,
			],
			[
				'ten' => 'Nguyễn Thị Thanh Thủy',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>1,
			],
			[
				'ten' => 'Trần Duy Hùng',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>2,
			],
			[
				'ten' => 'Nguyễn Thị Quỳnh Như',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>2,
			],
			[
				'ten' => 'Dương Chí Bằng',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>2,
			],
			[
				'ten' => 'Lê Hữu Dũng',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>3,
			],
			[
				'ten' => 'Nguyễn Thị Tâm',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>3,
			],
			[
				'ten' => 'Thái Thanh Tùng',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>3,
			],
			[
				'ten' => 'Trương Công Đoàn',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>4,
			],
			[
				'ten' => 'Mai Thúy Hà',
				'hoc_vi'=> 'Thạc sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>4,
			],
			[
				'ten' => 'Nguyễn Đức Tuấn',
				'hoc_vi'=> 'Tiến sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>4,
			],
			[
				'ten' => 'Nguyễn Thành Huy',
				'hoc_vi'=> 'Tiến sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>5,
			],
			[
				'ten' => 'Trần Tiến Dũng',
				'hoc_vi'=> 'Tiến sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>5,
			],
			[
				'ten' => 'Nguyễn Đức Hiểu',
				'hoc_vi'=> 'Tiến sĩ',
				'que_quan'=>'TP Hà Nội',
				'chuyen_mon'=>5,
			],
		];
		foreach ($data as $item){
			$giangVien = new GiangVien();
			$giangVien->ten = $item['ten'];
			$giangVien->hoc_van = $item['hoc_vi'];
			$giangVien->ma_bo_mon = $item['chuyen_mon'];
			$giangVien->que_quan = $item['que_quan'];
			$giangVien->created_at = time();
			if(!$giangVien->save()){
				echo '<pre>';
				print_r($giangVien->errors);
				die;
			}
			echo 'add done '.$giangVien->ten.PHP_EOL;
		}
	}
}
