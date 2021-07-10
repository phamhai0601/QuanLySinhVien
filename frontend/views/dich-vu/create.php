<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\DichVu */

$this->title = 'Create Dich Vu';
$this->params['breadcrumbs'][] = ['label' => 'Dich Vus', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dich-vu-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
