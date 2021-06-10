<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\LopTinChi */

$this->title = 'Create Lop Tin Chi';
$this->params['breadcrumbs'][] = ['label' => 'Lop Tin Chis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lop-tin-chi-create">
    <?= $this->render('_form', [
        'action'=>'create',
        'model' => $model,
    ]) ?>

</div>
