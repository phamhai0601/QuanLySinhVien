<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\SinhVien */

$this->title = 'Update Sinh Vien: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Sinh Viens', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="sinh-vien-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
