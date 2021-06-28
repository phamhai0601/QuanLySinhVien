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
use backend\models\MonHoc;
use common\helper\DateHelper;
use common\models\BoMon;
use dektrium\user\models\RegistrationForm;
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

	public function actionThemMonHoc(){
		$datas = [
			[
				'ten'=>'Kỹ thuật điện tử số',
				'tin_chi'=>'3'
			],			[
				'ten'=>'Thực hành Cơ sở lập trình',
				'tin_chi'=>'1'
			],
			[
				'ten'=>'Sinh hoạt công dân, sinh viên đầu khóa',
				'tin_chi'=>'0'
			],			[
				'ten'=>'Kiến tập doanh nghiệp',
				'tin_chi'=>'0'
			],			[
				'ten'=>'Giáo dục quốc phòng',
				'tin_chi'=>'9'
			],			[
				'ten'=>'Giáo dục thể chất',
				'tin_chi'=>'2'
			],			[
				'ten'=>'Tiếng Anh cơ bản 2',
				'tin_chi'=>'3'
			],			[
				'ten'=>'Giải tích 2',
				'tin_chi'=>'3'
			],			[
				'ten'=>'Cơ sở dữ liệu',
				'tin_chi'=>'3'
			],			[
				'ten'=>'Kiến trúc máy tính',
				'tin_chi'=>'3'
			],			[
				'ten'=>'Chuyên đề thực tập cơ sở',
				'tin_chi'=>'3'
			],			[
				'ten'=>'Thiết kế Web',
				'tin_chi'=>'4'
			],			[
				'ten'=>'Kỹ thuật lập trình hướng đối tượng',
				'tin_chi'=>'4'
			],			[
				'ten'=>'Tiếng Anh cơ bản 3',
				'tin_chi'=>'3'
			],			[
				'ten'=>'Xác suất và thống kê toán học',
				'tin_chi'=>'3'
			],			[
				'ten'=>'Cấu trúc dữ liệu và giải thuật',
				'tin_chi'=>'3'
			],			[
				'ten'=>'Toán rời rạc',
				'tin_chi'=>'4'
			],
			[
				'ten'=>'Nguyên lý hệ điều hành',
				'tin_chi'=>'3'
			],[
				'ten'=>'Mạng và truyền thông',
				'tin_chi'=>'3'
			],[
				'ten'=>'Hệ quản trị CSDL',
				'tin_chi'=>'4'
			],[
				'ten'=>'Mã nguồn mở',
				'tin_chi'=>'3'
			],[
				'ten'=>'Thực hành LT hướng đối tượng',
				'tin_chi'=>'1'
			],[
				'ten'=>'Thực hành HQTCSDL',
				'tin_chi'=>'1'
			],[
				'ten'=>'Kĩ năng mềm',
				'tin_chi'=>'3'
			],[
				'ten'=>'Đại số và hình giải tích',
				'tin_chi'=>'3'
			],[
				'ten'=>'Lập trình Hướng sự kiện',
				'tin_chi'=>'4'
			],[
				'ten'=>'An ninh và bảo mật dữ liệu',
				'tin_chi'=>'3'
			],[
				'ten'=>'Quản trị mạng',
				'tin_chi'=>'3'
			],[
				'ten'=>'Tiếng Anh chuyên ngành',
				'tin_chi'=>'3'
			],
			[
				'ten'=>'Nguyên lý',
				'tin_chi'=>'5'
			],[
				'ten'=>'Chuyên đề thực tập ngành',
				'tin_chi'=>'4'
			],[
				'ten'=>'Lập trình trên thiết bị di động',
				'tin_chi'=>'3'
			],[
				'ten'=>'Lập trình hệ thống',
				'tin_chi'=>'3'
			],[
				'ten'=>'Phân tích và thiết kế hệ thống TT',
				'tin_chi'=>'4'
			],[
				'ten'=>'Thương mại điện tử',
				'tin_chi'=>'3'
			],[
				'ten'=>'Sinh hoạt công dân, sinh viên giữa khóa',
				'tin_chi'=>'0'
			],[
				'ten'=>'Pháp luật đại cương',
				'tin_chi'=>'2'
			],[
				'ten'=>'Tư tưởng Hồ Chí Minh',
				'tin_chi'=>'2'
			],[
				'ten'=>'Lập trình Web',
				'tin_chi'=>'4'
			],[
				'ten'=>'Giáo dục thể chất',
				'tin_chi'=>'3'
			],[
				'ten'=>'Đường lối cách mạng của Đảng CSVN',
				'tin_chi'=>'3'
			],[
				'ten'=>'Thực hành LTr Web',
				'tin_chi'=>'1'
			]
		];

		foreach ($datas as $item){
			$monHoc = new MonHoc();
			$monHoc->ten_mon_hoc = $item['ten'];
			$monHoc->tin_chi = $item['tin_chi'];
			$monHoc->ma_bo_mon = 1;
			$monHoc->mieu_ta = '';
			if($monHoc->save()){
				echo $monHoc->ten_mon_hoc.PHP_EOL;
			}else{
				echo '<pre>';
				print_r($monHoc->errors);
				die();
			}
		}
	}

	public function actionTestTime(){
		echo strtotime('Saturday 5:25 PM');
	}

	public function actionRegister(){
		$formDangKi = new RegistrationForm();
		$formDangKi->email ='mitto.hai.7356@gmail.com';
		$formDangKi->username = 'phamhai1';
		$formDangKi->password= '1234567';
		if($formDangKi->register()){
			echo 'done';
		}else{
			echo '<pre>';
			print_r($formDangKi->errors);
			die();
		}
		echo 'done';

	}

	public function actionTest2(){
		$date = 'Wednesday, 16.06.2021 06:45';
		echo DateHelper::ShowWeekVN($date);die();

	}

	public function actionTest3(){
		echo strtotime('01/07/2021 06:45');
	}



}
