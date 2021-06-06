<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\SinhVienSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Sinh Viens';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sinh-vien-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Sinh Vien', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'ten',
            'email:email',
            'lop_hanh_chinh',
            'que_quan',
            //'gioi_tinh',
            //'tg_nhap_hoc',
            //'cmnd',
            //'created_at',
            //'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
