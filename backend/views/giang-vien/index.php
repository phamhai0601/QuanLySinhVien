<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\GiangVienhSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Giang Viens';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="giang-vien-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Giang Vien', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'ten',
            'hoc_van:ntext',
            'chuyen_nganh:ntext',
            'que_quan',
            //'ma_lop_hanh_chinh',
            //'created_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
