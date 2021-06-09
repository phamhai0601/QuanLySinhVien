<?php

namespace backend\controllers;

use Yii;
use backend\models\MonHoc;
use backend\models\search\MonHocSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * MonHocController implements the CRUD actions for MonHoc model.
 */
class MonHocController extends Controller
{

	public function actions() {
		// TODO: Change the auto generated stub
		$this->view->title = 'Môn học';
		return parent::actions();
	}

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
     * Lists all MonHoc models.
     * @return mixed
     */
	public function actionIndex($pagesize = 20) {
		$searchModel                        = new MonHocSearch();
		$dataProvider                       = $searchModel->search(Yii::$app->request->queryParams);
		$dataProvider->pagination->pageSize = $pagesize;
		return $this->render('index', [
			'pagesize'     => $pagesize,
			'searchModel'  => $searchModel,
			'dataProvider' => $dataProvider,
		]);
	}

    /**
     * Displays a single MonHoc model.
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

    /**
     * Creates a new MonHoc model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
	    Yii::$app->response->format = 'json';
        $model = new MonHoc();
        if ($model->load(Yii::$app->request->post())) {
        	if($model->save()){
		        return $this->redirect(['view', 'id' => $model->id]);
	        }else{
        		echo '<pre>';
        		print_r($model->errors);
        		die();
	        }

        }

        return $this->renderAjax('create', [
	        'model' => $model,
        ]);
    }

    /**
     * Updates an existing MonHoc model.
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
     * Deletes an existing MonHoc model.
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
     * Finds the MonHoc model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return MonHoc the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = MonHoc::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
