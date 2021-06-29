<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    30/6/2021
 * @time    12:30 AM
 */

namespace frontend\controllers;

use common\models\MaThe;
use common\models\TheNap;
use frontend\component\Controller;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;

class DichVuController extends Controller {

	/**
	 * {@inheritdoc}
	 */
	public function behaviors() {
		return [
			'access' => [
				'class' => AccessControl::className(),
				'rules' => [
					[
						'actions' => [
							'index',
							'mua-ma-the',
							'get-thong-tin-card'
						],
						'allow'   => true,
						'roles'   => ['@'],
					],
				],
			],
			'verbs'  => [
				'class'   => VerbFilter::className(),
				'actions' => [
					'delete' => ['POST'],
				],
			],
		];
	}

	/**
	 * @return string
	 */
	public function actionMuaMaThe() {
		$theNaps = TheNap::find()->all();
		return $this->render('nap-the', ['theNaps' => $theNaps]);
	}

	/**
	 * Lấy về thông tin của thẻ nạp.
	 * @return array
	 */
	public function actionGetThongTinCard(){
		\Yii::$app->response->format = 'json';
		$theNap = TheNap::findOne($_POST['idCard']);
		return [
			'error' => 0,
			'message' =>$theNap,
		];
	}

	public function actionTaoMaThe(){
		$maThe = new MaThe();
	}
}