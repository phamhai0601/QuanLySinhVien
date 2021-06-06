<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\LopTinChi */

$this->title = 'Update Lop Tin Chi: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Lop Tin Chis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="lop-tin-chi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
