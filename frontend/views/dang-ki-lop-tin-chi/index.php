<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\DangKiLopTinChiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Dang Ki Lop Tin Chis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dang-ki-lop-tin-chi-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Dang Ki Lop Tin Chi', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'ma_lop_tin_chi',
            'tg_bat_dau',
            'tg_ket_thuc',
            'tinh_trang',
            //'created_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
