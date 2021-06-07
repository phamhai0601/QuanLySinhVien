<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\LopHanhChinh */

$this->title = 'Create Lop Hanh Chinh';
$this->params['breadcrumbs'][] = ['label' => 'Lop Hanh Chinhs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lop-hanh-chinh-create">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>
</div>
