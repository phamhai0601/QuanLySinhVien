<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\LopTinChi */

$this->title = 'Create Lop Tin Chi';
$this->params['breadcrumbs'][] = ['label' => 'Lop Tin Chis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lop-tin-chi-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
