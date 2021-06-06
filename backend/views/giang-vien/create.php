<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\GiangVien */

$this->title = 'Create Giang Vien';
$this->params['breadcrumbs'][] = ['label' => 'Giang Viens', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="giang-vien-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
