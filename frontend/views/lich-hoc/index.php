<?php
/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\LichHocSearch */

/* @var $dataProvider yii\data\ActiveDataProvider */

use common\helper\DateHelper;
use frontend\models\LichHoc;
use frontend\models\LopTinChi;
use kartik\grid\GridView;

$this->title                   = 'Lich Hocs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="container">
	<h2>Lịch học của <b><?= $this->sinhVien->ten ?></b></h2>
	<div class="lich-hoc-index">
		<?= GridView::widget([
			'dataProvider'         => $dataProvider,
			'export'               => false,
			'toggleData'           => false,
			'panel'                => [
				'heading' => $this->title,
				'type'    => 'primary',
			],
			'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> ' . $this->title . '</h3>{summary}<div class="clearfix"></div>',
			'columns'              => [
				['class' => 'yii\grid\SerialColumn'],
				[
					'attribute' => 'ngay_hoc',
					'label'     => 'Giờ học',
					'value'     => function(LichHoc $data) {
						return '<b>' . DateHelper::ShowWeekVN(date('l, d.m.Y H:i:s', $data->ngay_hoc)) . '</b>';
					},
					'format'    => 'raw',
				],
				[
					'label'         => 'Phòng học',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(LichHoc $data) {
						return $data->lopTinChi->phongHoc->ten;
					},
				],
				[
					'label' => 'Môn học',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value' => function(LichHoc $data) {
						return $data->lopTinChi->monHoc->ten_mon_hoc;
					},
				],
				[
					'label'         => 'Giảng viên',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(LichHoc $data) {
						return $data->lopTinChi->giangVien->ten;
					},
				],
				[
					'attribute' => 'ma_lop_tin_chi',
					'label'     => 'Lớp/DS thi',
				],
			],
		]); ?>
	</div>
</div>
