<?php
/**
 * Created by FesVPN.
 * @project Default (Template) Project
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    12/7/2021
 * @time    11:40 PM
 */
/* @var $this \yii\web\View */
/* @var $searchModel \backend\models\search\SinhVienSearch */

/* @var $dataProvider \yii\data\ActiveDataProvider */

use backend\models\SinhVien;
use common\helper\DateHelper;
use kartik\grid\EditableColumn;
use kartik\grid\GridView;

?>

<div id="danh-sach-lop">
	<div class="header">
		<button class="btn btn-warning">Lập Hóa Đơn Học Phí</button>
	</div>
	<?= GridView::widget([
		'dataProvider'         => $dataProvider,
		'filterModel'          => $searchModel,
		'export'               => false,
		'toggleData'           => false,
		'panel'                => [
			'heading' => $this->title,
			'type'    => 'primary',
		],
		'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> ' . $this->title . '</h3>{summary}<div class="clearfix"></div>',
		'columns'              => [
			'id',
			'ten',
			[
				'attribute'      => 'email',
				'contentOptions' => ['style' => 'width:100px;overflow: hidden;'],
				'value'          => function(SinhVien $data) {
					return explode('@', $data->email)[0] . '<br>@' . explode('@', $data->email)[1];
				},
				'format'         => 'raw',
			],
			[
				'label'         => 'Username',
				'headerOptions' => ['style' => 'color:#337ab7'],
				'value'         => function(SinhVien $data) {
					if (!is_null($data->user)) {
						return $data->user->username;
					}
					return '<a class="btn btn-primary" href="' . Url::to([
							'sinh-vien/cap-tai-khoan',
							'id' => $data->id,
						]) . '">Cấp tài khoản</a>';
				},
				'format'        => 'raw',
			],
			'que_quan',
			[
				'attribute' => 'gioi_tinh',
				'value'     => function(SinhVien $data) {
					return SinhVien::GIOTINH[$data->gioi_tinh];
				},
			],
			[
				'attribute' => 'tg_nhap_hoc',
				'value'     => function(SinhVien $data) {
					return DateHelper::ShowWeekVN(date(Yii::$app->params['date'], $data->tg_nhap_hoc));
				},
			],
			'cmnd',
			[
				'attribute' => 'created_at',
				'value'     => function(SinhVien $data) {
					return DateHelper::ShowWeekVN(date(Yii::$app->params['date'], $data->created_at));
				},
			],
			['class' => 'yii\grid\ActionColumn'],
		],
	]); ?>
</div>
