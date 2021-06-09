<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\KiHoc */

$this->title = 'Create Ki Hoc';
$this->params['breadcrumbs'][] = ['label' => 'Ki Hocs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ki-hoc-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
