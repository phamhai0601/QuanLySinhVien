<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\LichThi */

$this->title = 'Create Lich Thi';
$this->params['breadcrumbs'][] = ['label' => 'Lich This', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lich-thi-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
