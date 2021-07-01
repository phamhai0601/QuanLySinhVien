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
use common\models\TheNap;
use frontend\component\Controller;
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
							'hoa-don'
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
		if (\Yii::$app->request->post()) {
			$theNap = TheNap::findOne($_POST['the-nap']);
			$hoaDon = HoaDon::newIntance($theNap->id, $this->user->id);
			if ($hoaDon) {
				\Yii::$app->session->setFlash('success', 'Tạo hóa đơn thành công. Order: ' . $hoaDon->id);
				return $this->redirect(['dich-vu/hoa-don','id' => $hoaDon->id]);
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
	 * @param $id
	 *
	 * @return string
	 */
	public function actionHoaDon($id) {
		$model = HoaDon::findOne($id);
		return $this->render('hoa-don', ['model' => $model]);
	}
}