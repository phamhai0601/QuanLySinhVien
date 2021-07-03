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

use common\models\HoaDon;
use common\models\MaThe;
use common\models\payment\OnePay;
use common\models\TheNap;
use frontend\component\Controller;
use Yii;
use yii\base\BaseObject;
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
							'get-thong-tin-card',
							'tao-hoa-don',
							'hoa-don',
							'get-link-payment',
							'checkout',
							'check-status-hoa-don',
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

	public function actions() {
		return [
			'error' => [
				'class' => 'yii\web\ErrorAction',
			],
		];
	}

	/**
	 * Tạo hóa đơn mới.
	 * @return string
	 */
	public function actionMuaMaThe() {
		$theNaps = TheNap::find()->all();
		if (\Yii::$app->request->post()) {
			$theNap = TheNap::findOne($_POST['the-nap']);
			$hoaDon = HoaDon::newIntance($theNap->id, $this->user->id);
			if ($hoaDon) {
				\Yii::$app->session->setFlash('success', 'Tạo hóa đơn thành công. Order: ' . $hoaDon->id);
				return $this->redirect([
					'dich-vu/hoa-don',
					'id' => $hoaDon->id,
				]);
			}
		}
		return $this->render('nap-the', ['theNaps' => $theNaps]);
	}

	/**
	 * Lấy về thông tin của thẻ nạp.
	 * @return array
	 */
	public function actionGetThongTinCard() {
		\Yii::$app->response->format = 'json';
		$theNap                      = TheNap::findOne($_POST['idCard']);
		return [
			'error'   => 0,
			'message' => $theNap,
		];
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
	 * get link to payment.
	 * input is id HoaDon
	 * @return array
	 */
	public function actionGetLinkPayment() {
		Yii::$app->response->format = 'json';
		$out                        = [
			'error' => 1,
			'url'   => "",
		];
		$id                         = $_POST['id']; // id HoaDon
		$hoaDon                     = HoaDon::findOne($id);
		$responseData               = OnePay::newInstance($hoaDon);
		if ($responseData) {
			$out['error'] = 0;
			$out['url']   = $responseData->redirect_url;
			return $out;
		}
		return $out;
	}

	/**
	 * Kiểm tra trạng thái hóa đơn.
	 *
	 * @param $id
	 *
	 * @return array
	 */
	public function actionCheckStatusHoaDon($id) {
		Yii::$app->response->format = 'json';
		$out                        = [
			'error'  => 1,
			'status' => HoaDon::STATUS_PENDING,
		];
		$hoaDon                     = HoaDon::findOne($id);
		if ($hoaDon) {
			$out['error']  = 0;
			$out['status'] = $hoaDon->status;
			return $out;
		}
		return $out;
	}

	/**
	 * Nhận thông tin từ OnePay trả về.
	 * @return string
	 */
	public function actionCheckout() {
		$get = $_GET;
		if ($get['vpc_TxnResponseCode'] == OnePay::STATUS_SUCCESS) {
			$maThe = MaThe::newInstance($get['vpc_OrderInfo']);
			return '<script>window.close()</script>';
		}
	}
}