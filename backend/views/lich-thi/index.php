<?php

use common\helper\DateHelper;
use common\models\LichThi;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\LichThiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title                   = 'Lich This';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lich-thi-index">

	<h1><?= Html::encode($this->title) ?></h1>

	<p>
		<?= Html::a('Create Lich Thi', ['create'], ['class' => 'btn btn-success']) ?>
	</p>

	<?php // echo $this->render('_search', ['model' => $searchModel]); ?>

	<?= GridView::widget([
		'dataProvider' => $dataProvider,
		'filterModel'  => false,
		'columns'      => [
			['class' => 'yii\grid\SerialColumn'],
			[
				'contentOptions' => ['style' => 'font-weight: bold'],
				'attribute'      => 'ma_lop_tin_chi',
				'label'          => 'Mã lớp/DS thi',
			],
			[
				'label'          => 'Môn học',
				'contentOptions' => ['style' => 'font-weight: bold'],
				'headerOptions'  => ['style' => 'color:#3c8dbc'],
				'value'          => function(LichThi $data) {
					return $data->lopTinChi->monHoc->ten_mon_hoc;
				},
			],
			[
				'attribute'      => 'tg_thi',
				'label'          => 'Thời gian thi',
				'contentOptions' => ['style' => 'font-weight: bold'],
				'value'          => function(LichThi $data) {
					return DateHelper::ShowWeekVN(date(Yii::$app->params['date'], $data->tg_thi));
				},
				'format'         => 'raw',
			],
			[
				'attribute'      => 'ma_phong',
				'contentOptions' => ['style' => 'font-weight: bold'],
				'label'          => 'Phòng thi',
				'value'          => function(LichThi $data) {
					return $data->phongHoc->ten;
				},
			],
			[
				'attribute'      => 'ma_giang_vien',
				'contentOptions' => ['style' => 'font-weight: bold'],
				'label'          => 'Giảng viên coi thi',
				'value'          => function(LichThi $data) {
					return $data->giangVien->ten;
				},
			],
			['class' => 'yii\grid\ActionColumn'],
		],
	]); ?>

</div>
