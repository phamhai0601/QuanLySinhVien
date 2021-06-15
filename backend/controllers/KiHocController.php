<?php

namespace backend\controllers;

use Yii;
use common\models\KiHoc;
use backend\models\search\KiHocSearch;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * KiHocController implements the CRUD actions for KiHoc model.
 */
class KiHocController extends Controller
{
	public function actions() {
		// TODO: Change the auto generated stub
		$this->view->title ='Kì học';
		return parent::actions();
	}

	/**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
	        'access' => [
		        'class' => AccessControl::className(),
		        'rules' => [
			        [
				        'actions' => [
					        'index',
					        'view',
					        'create',
					        'update'
				        ],
				        'allow' => true,
				        'roles' => ['@'],
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
     * Lists all KiHoc models.
     * @return mixed
     */
    public function actionIndex($pagesize = 20)
    {
	    $searchModel                        = new KiHocSearch();
	    $dataProvider                       = $searchModel->search(Yii::$app->request->queryParams);
	    $dataProvider->pagination->pageSize = $pagesize;
	    return $this->render('index', [
		    'pagesize'     => $pagesize,
		    'searchModel'  => $searchModel,
		    'dataProvider' => $dataProvider,
	    ]);
    }

    /**
     * Displays a single KiHoc model.
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
     * Creates a new KiHoc model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new KiHoc();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing KiHoc model.
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
     * Deletes an existing KiHoc model.
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
     * Finds the KiHoc model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return KiHoc the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = KiHoc::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
