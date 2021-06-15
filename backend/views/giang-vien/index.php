<?php


/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\GiangVienhSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/** @var int $pagesize */


use common\widgets\Paging;
use kartik\grid\GridView;

$this->title                   = 'Giang Viens';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="giang-vien-index">
	<?=
    GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'export' => false,
        'toggleData'=>false,
        'panel' => [
	        'heading'=>$this->title,
	        'type'=>'default',
	        'before'=>'<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-tao-lop-tin-chi"><i class="fa fa-plus" aria-hidden="true"></i> Tạo lớp hành chính</button>'
	                  .Paging::widget([
			        'current_pagesize' => $pagesize,
		        ]),
        ],
        'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> '.$this->title.'</h3>{summary}<div class="clearfix"></div>',
        'columns' => [
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
