<?php

namespace frontend\controllers;

use common\models\LopTinChi;
use common\models\SvDkiTinChi;
use frontend\component\Controller;
use Yii;
use frontend\models\DangKiLopTinChi;
use frontend\models\search\DangKiLopTinChiSearch;
use yii\filters\AccessControl;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use function Symfony\Component\String\s;

/**
 * DangKiLopTinChiController implements the CRUD actions for DangKiLopTinChi model.
 */
class DangKiLopTinChiController extends Controller {

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
							'view',
							'create',
							'update',
							'dang-ky-tin-chi',
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
	 * Lists all DangKiLopTinChi models.
	 * @return mixed
	 */
	public function actionIndex($pagesize = 20) {
		$searchModel                        = new DangKiLopTinChiSearch();
		$dataProvider                       = $searchModel->search(Yii::$app->request->queryParams);
		$dataProvider->pagination->pageSize = $pagesize;
		$daDangKy                           = DangKiLopTinChi::find()->alias('tc')->innerJoin('sv_dki_tin_chi as sv', 'tc.ma_lop_tin_chi = sv.ma_lop_tin_chi')->where(['sv.id_sinh_vien' => $this->sinhVien->id])->all();
		return $this->render('index', [
			'pagesize'     => $pagesize,
			'searchModel'  => $searchModel,
			'dataProvider' => $dataProvider,
			'daDangKy'     => $daDangKy,
		]);
	}

	public function actionDangKyTinChi($id) {
		$dangKyTinChi                = DangKiLopTinChi::findOne($id);
		$svDkiTinChi                 = new SvDkiTinChi();
		$svDkiTinChi->ma_lop_tin_chi = $dangKyTinChi->ma_lop_tin_chi;
		$svDkiTinChi->id_sinh_vien   = $this->sinhVien->id;
		$svDkiTinChi->created_at     = time();
		if ($svDkiTinChi->save()) {
			Yii::$app->session->setFlash('success', 'Đăng ký lớp tính chỉ <b>' . $dangKyTinChi->ma_lop_tin_chi . '</b> thành công.');
			return $this->redirect(['dang-ki-lop-tin-chi/index']);
		}
		Yii::$app->session->setFlash('danger', 'Đăng ký lớp tính chỉ <b>' . $dangKyTinChi->ma_lop_tin_chi . '</b> thất bại.');
		return $this->redirect(['dang-ki-lop-tin-chi/index']);
	}

	/**
	 * Displays a single DangKiLopTinChi model.
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
	 * Creates a new DangKiLopTinChi model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 * @return mixed
	 */
	public function actionCreate() {
		$model = new DangKiLopTinChi();
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
	 * Updates an existing DangKiLopTinChi model.
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
	 * Deletes an existing DangKiLopTinChi model.
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
	 * Finds the DangKiLopTinChi model based on its primary key value.
	 * If the model is not found, a 404 HTTP exception will be thrown.
	 *
	 * @param integer $id
	 *
	 * @return DangKiLopTinChi the loaded model
	 * @throws NotFoundHttpException if the model cannot be found
	 */
	protected function findModel($id) {
		if (($model = DangKiLopTinChi::findOne($id)) !== null) {
			return $model;
		}
		throw new NotFoundHttpException('The requested page does not exist.');
	}
}
