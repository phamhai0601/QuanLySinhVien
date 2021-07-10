<?php

use frontend\models\DichVu;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\DichVuSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title                   = 'Đăng kí dịch vụ';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dich-vu-index container">
	<?= GridView::widget([
		'dataProvider'         => $dataProvider,
		'filterModel'          => $searchModel,
		'pjax'                 => true,
		'export'               => false,
		'toggleData'           => false,
		'panel'                => [
			'heading' => $this->title,
			'type'    => 'primary',
			//			'before'  => Paging::widget([
			//				'current_pagesize' => $pagesize,
			//			]),
		],
		'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fa fa-file-text-o" aria-hidden="true"></i> ' . $this->title . '</h3>{summary}<div class="clearfix"></div>',
		'columns'              => [
			['class' => 'yii\grid\SerialColumn'],
			'full_name',
			[
				'attribute' => 'gia',
				'value'     => function(DichVu $data) {
					return $data->gia . " occ";
				},
			],
			[
				'attribute' => 'han_su_dung',
				'value'     => function(DichVu $data) {
					return $data->han_su_dung / (24 * 3600) . ' ngày';
				},
			],
			[
				'label'          => 'Action',
				'headerOptions'  => [
					'style' => 'color: #3c8dbc',
					'class' => 'text-center',
				],
				'contentOptions' => ['class' => 'text-center'],
				'value'          => function(DichVu $data) {
					return '<a><i class="fa fa-shopping-cart" aria-hidden="true" style="font-size: xx-large;"></i></a>';
				},
				'format'         => 'raw',
			],
		],
	]); ?>

</div>
