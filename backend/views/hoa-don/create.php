<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\HoaDon */

$this->title = 'Create Hoa Don';
$this->params['breadcrumbs'][] = ['label' => 'Hoa Dons', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="hoa-don-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
