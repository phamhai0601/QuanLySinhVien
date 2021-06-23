<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\LopTinChiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Lop Tin Chis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lop-tin-chi-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Lop Tin Chi', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'ten_lop',
            'ma_mon_hoc',
            'ma_giang_vien',
            'ma_ki_hoc',
            //'ma_phong_hoc',
            //'sv_toi_thieu',
            //'sv_toi_da',
            //'created_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
