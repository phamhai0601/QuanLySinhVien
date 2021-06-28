<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    28/6/2021
 * @time    8:45 AM
 */


use yii\base\Model;
use yii\bootstrap\ActiveForm;
use yii\web\Response;

class UserAjaxValidationTrait {
	protected function performAjaxValidation(Model $model){
		if (\Yii::$app->request->isAjax && $model->load(\Yii::$app->request->post()) && !isset($_POST['submit'])) {
			\Yii::$app->response->format = Response::FORMAT_JSON;
			\Yii::$app->response->data   = ActiveForm::validate($model);
			\Yii::$app->response->send();
			\Yii::$app->end();
		}
	}
}