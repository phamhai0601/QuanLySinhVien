<?php

use common\helper\DateHelper;
use common\models\LichHoc;
use common\widgets\Paging;
use frontend\models\DangKiLopTinChi;
use kartik\grid\DataColumn;
use kartik\grid\GridView;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\DangKiLopTinChiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/** @var int $pagesize */
$this->title                   = 'Dang Ki Lop Tin Chis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dang-ki-lop-tin-chi-index">
	<div class="dang-ki-lop-tin-chi-index">
		<?= GridView::widget([
			'dataProvider'         => $dataProvider,
			'filterModel'          => $searchModel,
			'export'               => false,
			'toggleData'           => false,
			'panel'                => [
				'heading' => $this->title,
				'type'    => 'primary',
				'before'  => Paging::widget([
					'current_pagesize' => $pagesize,
				]),
			],
			'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> ' . $this->title . '</h3>{summary}<div class="clearfix"></div>',
			'columns'              => [
				['class' => 'yii\grid\SerialColumn'],
				//	        'id',
				[
					'label'         => 'Đăng ký',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						$time_start = $data->lopTinChi->lichDangKy->tg_bat_dau;
						$time_end   = $data->lopTinChi->lichDangKy->tg_ket_thuc;
						if ($time_start < time() && time() < $time_end) {
							return '<a class="btn btn-success">Đăng ký</a>';
						}
						return '<a class="btn btn-success" disabled="disabled">Đăng ký</a>';
					},
					'format'        => 'raw',
				],
				'ma_lop_tin_chi',
				[
					'label'         => 'Môn học - Giảng viên',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						return $data->lopTinChi->monHoc->ten_mon_hoc . '<br>' . $data->lopTinChi->giangVien->ten;
					},
					'format'        => 'raw',
				],
				[
					'label'         => 'Tối thiểu',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						return $data->lopTinChi->sv_toi_thieu . ' sv';
					},
				],
				[
					'label'         => 'Tối đa',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						return $data->lopTinChi->sv_toi_da . ' sv';
					},
				],
				[
					'label'         => 'Đã đăng ký',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						return 0 . ' sv';
					},
				],
				[
					'label'         => 'Thời gian đăng ký',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						return 'từ <b>' . date(Yii::$app->params['date'], $data->tg_bat_dau) . '</b><br>' . 'đến <b>' . date(Yii::$app->params['date'], $data->tg_ket_thuc).'</b>';
					},
					'format'        => 'raw',
				],
				[
					'label' => 'Lịch học dự kiến',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value' => function(DangKiLopTinChi $data) {
						/** @var LichHoc $lichHoc */
						$lichHocs = $data->lopTinChi->lichHoc;
						$lis      = '';
						foreach ($lichHocs as $lichHoc) {
							$lis .= '<li>' . DateHelper::ShowWeekVN(date('l, d.m.Y H:i', $lichHoc->ngay_hoc)) . '</li>';
						}
						return '<ul>' . $lis . '</ul>';
					},
					'format' => 'raw'
				],
				[
					'class'               => DataColumn::class,
					'attribute'           => 'tinh_trang',
					'filter'              => false,
					'filterType'          => GridView::FILTER_SELECT2,
					'visible'             => function(DangKiLopTinChi $data) {
						if ($data->tinh_trang == DangKiLopTinChi::TRANGTHAI_DONG) {
							return true;
						}
						return false;
					},
					'filterWidgetOptions' => [
						'data'          => DangKiLopTinChi::TRANGTHAI,
						'options'       => ['placeholder' => 'Chọn trạng thái ...'],
						'pluginOptions' => [
							'allowClear' => true,
						],
					],
					'value'               => function(DangKiLopTinChi $data) {
						return '<label class="label label-' . DangKiLopTinChi::TRANGTHAI_LABEl[$data->tinh_trang] . '" style="font-size: larger">' . DangKiLopTinChi::TRANGTHAI[$data->tinh_trang] . '</label>';
					},
					'format'              => 'raw',
				],
				//				[
				//					'attribute' => 'created_at',
				//					'format'    => [
				//						'date',
				//						Yii::$app->params['format']['date'],
				//					],
				//				],
				//				['class' => 'yii\grid\ActionColumn'],
			],
		]); ?>

	</div>
