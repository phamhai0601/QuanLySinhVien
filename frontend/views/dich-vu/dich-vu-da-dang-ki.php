<?php
/**
 * Created by FesVPN.
 * @project Default (Template) Project
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    11/7/2021
 * @time    10:52 PM
 */

use common\helper\DateHelper;
use frontend\models\DangKiDichVu;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\DangKiDichVuSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title                   = 'Dịch đã đăng kí';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dang-ki-dich-vu-index container">
	<?= GridView::widget([
		'dataProvider'         => $dataProvider,
		'filterModel'          => $searchModel,
		'pjax'                 => true,
		'columns'              => [
			['class' => 'yii\grid\SerialColumn'],
			//			'id',
			[
				'attribute' => 'ma_tai_khoan',
				'value'     => function(DangKiDichVu $data) {
					return $data->user->email;
				},
			],
			[
				'attribute' => 'han_su_dung',
				'value'     => function(DangKiDichVu $data) {
					return DateHelper::ShowWeekVN(date(Yii::$app->params['date'], $data->han_su_dung));
				},
			],
			[
				'attribute' => 'ma_dich_vu',
				'value'     => function(DangKiDichVu $data) {
					return $data->dichVu->full_name;
				},
			],
			[
				'attribute' => 'trang_thai',
				'value'     => function(DangKiDichVu $data) {
					return '<label class="label label-' . DangKiDichVu::STATUS_LABEL[$data->trang_thai] . '">' . DangKiDichVu::STATUS[$data->trang_thai] . '</label>';
				},
				'format'    => 'raw',
			],
			//'created_at',
//			['class' => 'yii\grid\ActionColumn'],
		],
	]); ?>

</div>