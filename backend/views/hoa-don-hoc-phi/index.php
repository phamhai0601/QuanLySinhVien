<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\HoaDonHocPhiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Hoa Don Hoc Phis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="hoa-don-hoc-phi-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Hoa Don Hoc Phi', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'ngay_db_nop',
            'ngay_kt_nop',
            'trang_thai',
            'user_id',
            //'tong_tien',
            //'created_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
