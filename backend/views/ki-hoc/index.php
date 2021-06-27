<?php
/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\KiHocSearch */

/* @var $dataProvider yii\data\ActiveDataProvider */

use backend\models\KiHoc;
use kartik\grid\GridView;
use yii\helpers\Html;

$this->title                   = 'Ki Hocs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ki-hoc-index">
	<div class="container">
		<?= GridView::widget([
			'dataProvider'         => $dataProvider,
			'filterModel'          => $searchModel,
			'pjax'                 => true,
			'export'               => false,
			'toggleData'           => false,
			'panel'                => [
				'heading' => $this->title,
				'type'    => 'primary',
				'before'  => Html::a('Tạo kì học', ['create'], ['class' => 'btn btn-success']),
			],
			'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> ' . $this->title . '</h3>{summary}<div class="clearfix"></div>',
			'columns'              => [
				['class' => 'yii\grid\SerialColumn'],
				[
					'attribute' => 'ma_ki_hoc',
					'value'     => function(KiHoc $data) {
						return KiHoc::KIHOC[$data->ma_ki_hoc];
					},
				],
				[
					'attribute' => 'tg_bat_dau',
					'value'     => function(KiHoc $data) {
						return '<b>'.date('d/m/Y H:i:s', $data->tg_bat_dau).'</b>';
					},
					'format' => 'raw',
				],
				[
					'attribute' => 'tg_ket_thuc',
					'value'     => function(KiHoc $data) {
						return '<b>'.date('d/m/Y H:i:s', $data->tg_ket_thuc).'</b>';
					},
					'format' => 'raw',
				],
				['class' => 'yii\grid\ActionColumn'],
			],
		]); ?>
	</div>
</div>
