<?php

use frontend\models\DichVu;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\DichVuSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title                   = 'Dich Vus';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dich-vu-index">
	<?= GridView::widget([
		'dataProvider' => $dataProvider,
		'filterModel'  => $searchModel,
		'columns'      => [
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
			//'created_at',
			['class' => 'yii\grid\ActionColumn'],
		],
	]); ?>

</div>
