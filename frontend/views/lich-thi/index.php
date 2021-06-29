<?php

use common\helper\DateHelper;
use frontend\models\LichThi;
use kartik\grid\GridView;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\LichThiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title                   = 'Lich This';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lich-thi-index container">
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
				'attribute'      => 'ma_lop_tin_chi',
				'contentOptions' => ['style' => 'font-weight: bold'],
			],
			[
				'attribute'      => 'tg_thi',
				'contentOptions' => ['style' => 'font-weight: bold'],
				'value'          => function(LichThi $data) {
					return DateHelper::ShowWeekVN(date(Yii::$app->params['date'], $data->tg_thi));
				},
			],
			[
				'attribute'      => 'ma_phong',
				'contentOptions' => ['style' => 'font-weight: bold'],
				'value'          => function(LichThi $data) {
					return $data->phongHoc->ten;
				},
			],
			[
				'attribute'      => 'ma_giang_vien',
				'contentOptions' => ['style' => 'font-weight: bold'],
				'value'          => function(LichThi $data) {
					return $data->giangVien->ten;
				},
			],
		],
	]); ?>

</div>
