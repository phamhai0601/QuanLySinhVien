<?php

use kartik\grid\GridView;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\LopHanhChinhSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Lop Hanh Chinhs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lop-hanh-chinh-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'export' => false,
        'toggleData'=>false,
        'panel' => [
	        'heading'=>'<h3 class="panel-title"><i class="fab fa-evernote"></i> '.$this->title.'</h3>',
	        'type'=>'default',
	        'before'=>Html::a('<i class="glyphicon glyphicon-plus"></i> Tạo thông tin lớp hành chính', ['create'], ['class' => 'btn btn-success btn-outline pull-right']),
	        'footer'=>false,
        ],
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'ma_lop',
            'ma_giang_vien',
            'khoa_hoc',
            'created_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
