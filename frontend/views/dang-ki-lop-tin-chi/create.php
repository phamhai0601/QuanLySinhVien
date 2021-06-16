<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\DangKiLopTinChi */

$this->title = 'Create Dang Ki Lop Tin Chi';
$this->params['breadcrumbs'][] = ['label' => 'Dang Ki Lop Tin Chis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dang-ki-lop-tin-chi-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
