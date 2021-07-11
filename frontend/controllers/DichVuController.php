<?php

namespace frontend\controllers;

use frontend\models\DangKiDichVu;
use Yii;
use frontend\models\DichVu;
use frontend\models\search\DichVuSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DichVuController implements the CRUD actions for DichVu model.
 */
class DichVuController extends \frontend\component\Controller {

	/**
	 * {@inheritdoc}
	 */
	public function behaviors() {
		return [
			'verbs' => [
				'class'   => VerbFilter::className(),
				'actions' => [
					'delete' => ['POST'],
				],
			],
		];
	}

	/**
	 * Lists all DichVu models.
	 * @return mixed
	 */
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
	 * Creates a new DichVu model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 * @return mixed
	 */
	public function actionCreate() {
		$model = new DichVu();
		if ($model->load(Yii::$app->request->post()) && $model->save()) {
			return $this->redirect([
				'view',
				'id' => $model->id,
			]);
		}
		return $this->render('create', [
			'model' => $model,
		]);
	}

	/**
	 * Updates an existing DichVu model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 *
	 * @param integer $id
	 *
	 * @return mixed
	 * @throws NotFoundHttpException if the model cannot be found
	 */
	public function actionUpdate($id) {
		$model = $this->findModel($id);
		if ($model->load(Yii::$app->request->post()) && $model->save()) {
			return $this->redirect([
				'view',
				'id' => $model->id,
			]);
		}
		return $this->render('update', [
			'model' => $model,
		]);
	}

	/**
	 * Deletes an existing DichVu model.
	 * If deletion is successful, the browser will be redirected to the 'index' page.
	 *
	 * @param integer $id
	 *
	 * @return mixed
	 * @throws NotFoundHttpException if the model cannot be found
	 */
	public function actionDelete($id) {
		$this->findModel($id)->delete();
		return $this->redirect(['index']);
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
