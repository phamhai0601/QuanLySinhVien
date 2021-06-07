<?php

use common\widgets\Paging;
use kartik\grid\GridView;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\LopTinChiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/** @var int $pagesize */
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lop-tin-chi-index">
	<?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'export' => false,
        'toggleData' => false,
        'panel' => [
	        'heading'=>$this->title,
	        'type'=>'default',
	        'before'=>Html::a('<i class="glyphicon glyphicon-plus"></i> Tạo thông tin lớp tính chỉ', ['create'], ['class' => 'btn btn-success btn-outline pull-left'])
	                  .Paging::widget([
			        'current_pagesize' => $pagesize,
		        ]),
	        'footer'=>false,
        ],
        'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> '.$this->title.'</h3>{summary}<div class="clearfix"></div>',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'ten_lop',
            'ma_mon_hoc',
            'ma_giang_vien',
            'lich_hoc',
            //'ma_ki_hoc',
            //'ma_phong_hoc',
            //'created_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
