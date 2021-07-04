<?php

use backend\models\HoaDon;
use common\helper\DateHelper;
use common\models\User;
use kartik\grid\DataColumn;
use kartik\grid\GridView;
use kartik\popover\PopoverX;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\HoaDonSeearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title                   = 'Hóa Đơn';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="hoa-don-index">
	<?= GridView::widget([
		'dataProvider' => $dataProvider,
		'filterModel'  => $searchModel,
		'pjax'         => true,
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
		'columns'      => [
			//			['class' => 'yii\grid\SerialColumn'],
			[
				'attribute' => 'id',
				'label'     => 'Order Id',
			],
			[
				'attribute' => 'user_tao_hd',
				'value'     => function(HoaDon $data) {
					return $data->userHd->sinhVien->email;
				},
			],
			'ma_giao_dich',
			[
				'attribute'      => 'ma_ma_the',
				'contentOptions' => ['style' => 'font-weight: bold'],
				'value'          => function(HoaDon $data) {
					try {
						return $data->maThe->ma_the;
					} catch (Exception $exception) {
					}
					return 'not-set';
				},
			],
			[
				'label'         => 'Thành tiền',
				'headerOptions' => ['style' => 'color:#3c8dbc'],
				'value'         => function(HoaDon $data) {
					return number_format((float) $data->theNap->gia_tien, 0, ',', ' ') . ' vnđ';
				},
			],
			[
				'class'               => DataColumn::class,
				'attribute'           => 'created_at',
				'filterType'          => GridView::FILTER_DATE_RANGE,
				'filterWidgetOptions' => [
					'readonly'      => 'readonly',
					'convertFormat' => true,
					'pluginOptions' => [
						'locale'    => ['format' => 'Y-m-d'],
						'autoclose' => true,
					],
					'pluginEvents'  => [
						"cancel.daterangepicker" => 'function(ev,picker){$(this).val("").trigger("change");}',
					],
				],
				'value'               => function(HoaDon $data) {
					return DateHelper::ShowWeekVN(date(Yii::$app->params['date'], $data->created_at));
				},
			],
			[
				'class'               => DataColumn::class,
				'attribute'           => 'status',
				'filterType'          => GridView::FILTER_SELECT2,
				'filterWidgetOptions' => [
					'data'          => HoaDon::STATUS,
					'options'       => ['placeholder' => 'Chọn trạng thái...'],
					'pluginOptions' => [
						'allowClear' => true,
					],
				],
				'value'               => function(HoaDon $data) {
					return '<label class="label label-' . HoaDon::STATUS_LABEL[$data->status] . '">' . HoaDon::STATUS[$data->status] . '</label>';
				},
				'format'              => 'raw',
			],
			['class' => 'yii\grid\ActionColumn'],
		],
	]); ?>

</div>
