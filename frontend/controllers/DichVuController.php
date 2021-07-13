<?php

namespace frontend\controllers;

use common\models\payment\OnePay;
use common\models\TheNap;
use common\traits\UserAjaxValidationTrait;
use frontend\models\DangKiDichVu;
use frontend\models\form\CaptchaForm;
use frontend\models\form\NapMaTheForm;
use frontend\models\HoaDon;
use frontend\models\search\DangKiDichVuSearch;
use Yii;
use frontend\models\DichVu;
use frontend\models\search\DichVuSearch;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DichVuController implements the CRUD actions for DichVu model.
 */
class DichVuController extends \frontend\component\Controller {

	use UserAjaxValidationTrait;

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
							'hoa-don-dich-vu',
							'check-status-hoa-don',
							'nap-ma-the',
							'dich-vu-da-dang-ki',
							'dang-ki-dich-vu'
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
					'hoa-don/hoa-don',
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
	 * Nạp mã thẻ vào tài khoản
	 * @return string|\yii\web\Response
	 */
	public function actionNapMaThe() {
		$napMaTheForm = new NapMaTheForm();
		$captchaFrom  = new CaptchaForm();
		$this->performAjaxValidation($napMaTheForm);
		if ($napMaTheForm->load(Yii::$app->request->post()) && $captchaFrom->check()) {
			if ($napMaTheForm->nap()) {
				Yii::$app->session->setFlash('success', 'Nạp mã thẻ thành công!');
				return $this->refresh();
			}
			Yii::$app->session->setFlash('danger', 'Nạp mã thẻ không thành công');
		}
		return $this->render('nap-ma-the', [
			'napMaTheForm' => $napMaTheForm,
			'captcha'      => $captchaFrom,
		]);
	}

	public function actionIndex() {
		$searchModel  = new DichVuSearch();
		$dataProvider = $searchModel->search(Yii::$app->request->queryParams);
		return $this->render('index', [
			'searchModel'  => $searchModel,
			'dataProvider' => $dataProvider,
		]);
	}

	public function actionDangKiDichVu($id) {
		$dichVu                     = DichVu::findOne($id);
		$dangKiDichVu               = new DangKiDichVu();
		$dangKiDichVu->ma_tai_khoan = $this->user->id;
		$dangKiDichVu->ma_dich_vu   = $dichVu->id;
		$dangKiDichVu->trang_thai   = DangKiDichVu::STATUS_ACTIVE;
		$dangKiDichVu->created_at   = time();
		$dangKiDichVu->han_su_dung  = time() + $dichVu->han_su_dung;
		if ($dangKiDichVu->save()) {
			Yii::$app->session->setFlash('success', 'Đăng kí dịch vụ thành công');
			return $this->redirect(['dich-vu/index']);
		} else {
			echo '<pre>';
			print_r($dangKiDichVu->errors);
			die;
		}
		Yii::$app->session->setFlash('danger', 'Đăng kí dịch vụ không thành công');
		return $this->redirect(['dich-vu/index']);
	}

	public function actionDichVuDaDangKi() {
		$searchModel  = new DangKiDichVuSearch();
		$dataProvider = $searchModel->search(Yii::$app->request->queryParams);
		return $this->render('dich-vu-da-dang-ki', [
			'searchModel'  => $searchModel,
			'dataProvider' => $dataProvider,
		]);
	}

	/**
	 * Displays a single DichVu model.
	 *
	 * @param integer $id
	 *
	 * @return mixed
	 * @throws NotFoundHttpException if the model cannot be found
	 */
	public function actionView($id) {
		return $this->render('view', [
			'model' => $this->findModel($id),
		]);
	}

	/**
	 * Finds the DichVu model based on its primary key value.
	 * If the model is not found, a 404 HTTP exception will be thrown.
	 *
	 * @param integer $id
	 *
	 * @return DichVu the loaded model
	 * @throws NotFoundHttpException if the model cannot be found
	 */
	protected function findModel($id) {
		if (($model = DichVu::findOne($id)) !== null) {
			return $model;
		}
		throw new NotFoundHttpException('The requested page does not exist.');
	}
}
