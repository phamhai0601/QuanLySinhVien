<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\HoaDon */

$this->title = 'Update Hoa Don: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Hoa Dons', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="hoa-don-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
