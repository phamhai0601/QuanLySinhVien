<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MonHoc */

$this->title = 'Create Mon Hoc';
$this->params['breadcrumbs'][] = ['label' => 'Mon Hocs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="mon-hoc-create">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
