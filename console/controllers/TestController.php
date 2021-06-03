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
}