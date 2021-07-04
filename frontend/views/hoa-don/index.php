<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\HoaDonSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Hoa Dons';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="hoa-don-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Hoa Don', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'ma_the_nap',
            'user_tao_hd',
            'status',
            'ma_giao_dich',
            //'ma_ma_the',
            //'created_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
