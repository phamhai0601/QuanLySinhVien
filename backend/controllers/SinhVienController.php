<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    4/6/2021
 * @time    12:45 AM
 */

namespace backend\controllers;
use moonland\phpexcel\Excel;
use yii\base\BaseObject;
use yii\web\Controller;

class SinhVienController extends Controller {
	public function actionIndex(){
		//TODO
		$data = Excel::import(\Yii::getAlias('@console/runtime/data.xls'),[
			'setFirstRecordAsKeys' => true, // if you want to set the keys of record column with first record, if it not set, the header with use the alphabet column on excel.
			'setIndexSheetByName' => true, // set this if your excel data with multiple worksheet, the index of array will be set with the sheet name. If this not set, the index will use numeric.
			'getOnlySheet' => 'sheet1',
		]);
		echo '<pre>';
		print_r($data);
		die();
	}
}