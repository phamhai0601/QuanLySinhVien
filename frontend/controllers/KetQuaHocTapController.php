<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    28/6/2021
 * @time    1:23 AM
 */

namespace frontend\controllers;
use frontend\component\Controller;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;

class KetQuaHocTapController extends Controller {
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

	public function actionIndex(){
		echo 'ket-qua-hoc-tap';
	}
}