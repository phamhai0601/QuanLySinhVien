<?php

namespace backend\controllers;

use backend\form\TaoLichHocForm;
use backend\form\TaoLopTinChiForm;
use Yii;
use backend\models\LopTinChi;
use backend\models\search\LopTinChiSearch;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * LopTinChiController implements the CRUD actions for LopTinChi model.
 */
class LopTinChiController extends Controller
{

	public function actions() {
		// TODO: Change the auto generated stub
		$this->view->title = 'Lớp tín chỉ';
		return parent::actions();
	}

	/**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
	        'access' => [
		        'class' => AccessControl::class,
		        'rules' => [
			        [
				        'actions' => [
					        'create',
					        'delete',
					        'update',
					        'index',
					        'tao-lop-tin-chi',
					        'view',
					        'tao-lich-hoc'
				        ],
				        'allow'   => true,
				        'roles'   => ['@'],
			        ],
		        ],
	        ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all LopTinChi models.
     * @return mixed
     */
    public function actionIndex($pagesize = 20)
    {
	    $searchModel                        = new LopTinChiSearch();
	    $dataProvider                       = $searchModel->search(Yii::$app->request->queryParams);
	    $dataProvider->pagination->pageSize = $pagesize;
	    return $this->render('index', [
		    'pagesize'     => $pagesize,
		    'searchModel'  => $searchModel,
		    'dataProvider' => $dataProvider,
	    ]);
    }

    /**
     * Displays a single LopTinChi model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionTaoLopTinChi($id){
    	Yii::$app->response->format = 'json';
		$lopTinChi = LopTinChi::findOne($id);
		$model = new TaoLopTinChiForm();
		$model->ma_lop_tin_chi = $lopTinChi->ten_lop;
		if($model->load(Yii::$app->request->post())){
			if($model->save()){
				Yii::$app->session->setFlash('success','Tạo lịch đăng ký lớp tín chỉ thành công.');
				$this->redirect(['lop-tin-chi/index']);
			}else{
				Yii::$app->session->setFlash('danger','Tạo lịch đăng ký lớp tín chỉ không thành công.');
				$this->redirect(['lop-tin-chi/index']);
			}
		}
		return $this->renderAjax('tao-lop-tin-chi-form',['model'=>$model]);
    }

	public function actionTaoLichHoc($id) {
    	Yii::$app->response->format = 'json';
		$model                 = new TaoLichHocForm();
		$model->ma_lop_tin_chi = $id;
		if ($model->load(Yii::$app->request->post())) {
			if ($model->save()) {
				Yii::$app->session->setFlash('success','Tạo lịch học cho lớp tín chỉ thành công.');
				$this->redirect(['lop-tin-chi/index']);
			} else {
				Yii::$app->session->setFlash('danger','Tạo lịch học cho lớp tín chỉ không thành công.');
				$this->redirect(['lop-tin-chi/index']);
			}
		}
		return $this->renderAjax('tao-lic-hoc', [
			'model' => $model,
		]);
	}

    /**
     * Creates a new LopTinChi model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
    	Yii::$app->response->format = 'json';
        $model = new LopTinChi();
        if ($model->load(Yii::$app->request->post())) {
            if($model->save()){
            	Yii::$app->session->setFlash('success','Tạo thông tin lớp tín chỉ thành công.');
	            $this->redirect(['lop-tin-chi/index']);
            }else{
            	echo '<pre>';
            	print_r($model->errors);
            	die();
	            Yii::$app->session->setFlash('danger','Tạo thông tin lớp tín chỉ không thành công.');
	            $this->redirect(['lop-tin-chi/index']);
            }
        }

        return $this->renderAjax('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing LopTinChi model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing LopTinChi model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
    	$model = LopTinChi::findOne($id);
    	$model->delete();
		Yii::$app->session->setFlash('success','Xóa thông tin lớp tín chỉ <b>'.$model->ten_lop.'</b> thành công.');
        return $this->redirect(['index']);
    }

    /**
     * Finds the LopTinChi model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return LopTinChi the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = LopTinChi::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
