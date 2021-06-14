<?php

namespace backend\controllers;

use backend\models\LopHanhChinh;
use common\form\RegistrationForm;
use Yii;
use backend\models\SinhVien;
use backend\models\search\SinhVienSearch;
use yii\base\BaseObject;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * SinhVienController implements the CRUD actions for SinhVien model.
 */
class SinhVienController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all SinhVien models.
     * @return mixed
     */
    public function actionIndex($pagesize = 20)
    {
    	if(Yii::$app->request->post('hasEditable')){
		    $id       = Yii::$app->request->post('editableKey');
		    $sinhVien = SinhVien::findOne($id);
		    $out      = [
			    'output'  => '',
			    'message' => '',
		    ];
		    $posted   = current($_POST['SinhVien']);
			switch (Yii::$app->request->post('editableAttribute')){
				case 'lop_hanh_chinh':
					$lopHanhChinh = LopHanhChinh::findOne($posted['lop_hanh_chinh']);
					$sinhVien->updateAttributes(['lop_hanh_chinh'=>$posted['lop_hanh_chinh']]);
					$out['output']  = $lopHanhChinh->ma_lop;
					break;
			}
		    if ($out['output'] == '') {
			    $out['output'] = '<em>(not set)</em>';
		    }
			echo json_encode($out);
			die();
	    }

        $searchModel = new SinhVienSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
		$dataProvider->pagination->pageSize = $pagesize;
	    return $this->render('index', [
		    'pagesize'     => $pagesize,
		    'searchModel'  => $searchModel,
		    'dataProvider' => $dataProvider,
	    ]);
    }

    /**
     * Displays a single SinhVien model.
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

    public function actionCapTaiKhoan($id){
		$sinhVien = SinhVien::findOne($id);
		$capTaiKhoan = new RegistrationForm();
		$capTaiKhoan->email = $sinhVien->email;
		$capTaiKhoan->info_id = $id;
		$capTaiKhoan->username = explode("@",$sinhVien->email)[0];
		$capTaiKhoan->password = $sinhVien->cmnd;
		if($capTaiKhoan->register()){
			Yii::$app->session->setFlash('success','Cấp tài khoản <b>'.$capTaiKhoan->email.'</b> thành công');
			$this->redirect(['sinh-vien/index']);
		}else{
			Yii::$app->session->setFlash('danger','Cấp tài khoản <b>'.$capTaiKhoan->email.'</b> không thành công');
			$this->redirect(['sinh-vien/index']);
		}
    }

    /**
     * Creates a new SinhVien model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new SinhVien();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing SinhVien model.
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
     * Deletes an existing SinhVien model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the SinhVien model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return SinhVien the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = SinhVien::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
