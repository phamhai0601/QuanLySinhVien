<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\SinhVien */

$this->title = 'Create Sinh Vien';
$this->params['breadcrumbs'][] = ['label' => 'Sinh Viens', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sinh-vien-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
