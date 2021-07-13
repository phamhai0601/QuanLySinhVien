<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\HoaDonHocPhi */

$this->title = 'Create Hoa Don Hoc Phi';
$this->params['breadcrumbs'][] = ['label' => 'Hoa Don Hoc Phis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="hoa-don-hoc-phi-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
