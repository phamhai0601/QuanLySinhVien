<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\DangKiLopTinChi */

$this->title = 'Update Dang Ki Lop Tin Chi: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Dang Ki Lop Tin Chis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="dang-ki-lop-tin-chi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
