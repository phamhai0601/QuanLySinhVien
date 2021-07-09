<?php

namespace frontend\controllers;

use common\models\HoaDon;
use common\models\MaThe;
use common\models\payment\OnePay;
use frontend\models\search\HoaDonSearch;
use Yii;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;

/**
 * HoaDonController implements the CRUD actions for HoaDon model.
 */
class HoaDonController extends \frontend\component\Controller {

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
							'hoa-don',
							'checkout'
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
	 * Lists all HoaDon models.
	 * @return mixed
	 */
	public function actionIndex() {
		$searchModel              = new HoaDonSearch();
		$searchModel->user_tao_hd = $this->user->id;
		$dataProvider             = $searchModel->search(Yii::$app->request->queryParams);
		return $this->render('index', [
			'searchModel'  => $searchModel,
			'dataProvider' => $dataProvider,
		]);
	}

	/**
	 * Show hóa đơn.
	 *
	 * @param $id
	 *
	 * @return string
	 */
	public function actionHoaDon($id) {
		$model = HoaDon::findOne($id);
		return $this->render('hoa-don', ['model' => $model]);
	}

	/**
	 * Nhận thông tin từ OnePay trả về.
	 * @return string
	 */
	public function actionCheckout() {
		$get = $_GET;
		if ($get['vpc_TxnResponseCode'] == OnePay::STATUS_SUCCESS) {
			$hoaDon = HoaDon::findOne($get['vpc_OrderInfo']);
			$hoaDon->updateAttributes([
				'status'       => HoaDon::STATUS_SUCCESS,
				'ma_giao_dich' => $get['vpc_MerchTxnRef'],
			]);
			$maThe = MaThe::newInstance($hoaDon->id);
			return '<script>window.close()</script>';
		}
	}
}
