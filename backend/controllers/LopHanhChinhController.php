<?php

namespace backend\controllers;

use Yii;
use backend\models\LopHanhChinh;
use backend\models\search\LopHanhChinhSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * LopHanhChinhController implements the CRUD actions for LopHanhChinh model.
 */
class LopHanhChinhController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function actions() {
	    // TODO: Change the auto generated stub
		$this->view->title = 'Lớp hành chính';
	    return parent::actions();
    }

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
     * Lists all LopHanhChinh models.
     * @return mixed
     */
	public function actionIndex($pagesize = 20) {
		$searchModel                        = new LopHanhChinhSearch();
		$dataProvider                       = $searchModel->search(Yii::$app->request->queryParams);
		$dataProvider->pagination->pageSize = $pagesize;
		return $this->render('index', [
			'pagesize'     => $pagesize,
			'searchModel'  => $searchModel,
			'dataProvider' => $dataProvider,
		]);
	}

    /**
     * Displays a single LopHanhChinh model.
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
     * Creates a new LopHanhChinh model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
    	Yii::$app->response->format = 'json';
        $model = new LopHanhChinh();

        if ($model->load(Yii::$app->request->post()) ) {
        	if($model->save()){
		        return $this->redirect(['view', 'id' => $model->id]);
	        }else{
        		echo '<pre>';
        		print_r($model->errors);
        		die;
	        }

        }
        return $this->renderAjax('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing LopHanhChinh model.
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
     * Deletes an existing LopHanhChinh model.
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
     * Finds the LopHanhChinh model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return LopHanhChinh the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = LopHanhChinh::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
