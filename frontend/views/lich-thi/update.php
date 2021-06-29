<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\LichThi */

$this->title = 'Update Lich Thi: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Lich This', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="lich-thi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
