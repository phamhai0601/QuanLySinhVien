<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\HoaDonHocPhi */

$this->title = 'Update Hoa Don Hoc Phi: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Hoa Don Hoc Phis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="hoa-don-hoc-phi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
