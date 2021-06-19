<?php

use backend\models\LopTinChi;
use common\widgets\Paging;
use kartik\editable\Editable;
use kartik\grid\DataColumn;
use kartik\grid\EditableColumn;
use kartik\grid\GridView;
use kartik\popover\PopoverX;
use yii\bootstrap\ButtonDropdown;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\LopTinChiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/** @var int $pagesize */
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lop-tin-chi-index">
	<?= GridView::widget([
		'dataProvider'         => $dataProvider,
		'filterModel'          => $searchModel,
		'pjax'                 => true,
		'export'               => false,
		'toggleData'           => false,
		'panel'                => [
			'heading' => $this->title,
			'type'    => 'primary',
			'before'  => '<a type="button" data-toggle="modal" class="btn btn-primary" data-target="#tao-lop-tin-chi-modal" ><i class="fa fa-plus" aria-hidden="true"></i></i> Tạo thông tin lớp tín chỉ</a>' . Paging::widget([
					'current_pagesize' => $pagesize,
				]),
		],
		'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> ' . $this->title . '</h3>{summary}<div class="clearfix"></div>',
		'columns'              => [
			'ten_lop',
			[
				'attribute' => 'ma_mon_hoc',
				'value'     => function(LopTinChi $data) {
					return $data->monHoc->ten_mon_hoc;
				},
			],
			[
				'attribute' => 'ma_giang_vien',
				'value'     => function(LopTinChi $data) {
					return $data->giangVien->ten;
				},
			],
			[
				'attribute' => 'ma_ki_hoc',
				'value'     => function(LopTinChi $data) {
					return $data->kiHoc->ma_ki_hoc;
				},
			],
			[
				'label'          => 'Lịch học',
				'headerOptions'  => ['style' => 'color:#337ab7'],
				'contentOptions' => ['class' => 'text-center'],
				'value'          => function(LopTinChi $data) {
					/** @var \common\models\LichHoc $lichHoc */
					$button   = '<div class="dropdown" style="text-align: left">
								  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Lich học
								  <span class="caret"></span></button>
								  <ul class="dropdown-menu box-shadow">
								    <li><a data-toggle="modal" data-target="#tao-lich-hoc-modal" data-id="' . $data->id . '">Thêm</a></li>
								    <li><a href="#">Sửa</a></li>
								    <li><a href="#">Xóa</a></li>
								  </ul>
								</div>';
					$lichHocs = $data->lichHoc;
					if (!empty($lichHocs)) {
						$li = '';
						foreach ($lichHocs as $lichHoc) {
							$li = '<a data-toggle="modal" data-target="#sua-lich-hoc-modal" data-id="' . $lichHoc->id . '">' . date('l, d.m.Y H:i:s', $lichHoc->ngay_hoc) . '</a></br>';
						}
					}
					return $li . $button;
				},
				'format'        => 'raw',
			],
			[
				'label'          => 'Lịch dăng ký',
				'headerOptions'  => [
					'style' => 'color:#337ab7',
				],
				'contentOptions' => [
					'style' => 'min-width: 150px',
					'class' => 'text-center',
				],
				'value'          => function(LopTinChi $data) {
					if (is_null($data->lichDangKy)) {
						return '<a href="#" type="button" data-toggle="modal" class="btn btn-primary" data-target="#tao-lich-dang-ki-modal" data-id="' . $data->id . '" >Tạo lịch</a>';
					}
					$time = 'từ <b>' . date(Yii::$app->params['date'], $data->lichDangKy->tg_bat_dau) . '</b><br>đến <b>' . date(Yii::$app->params['date'], $data->lichDangKy->tg_ket_thuc) . '</b>';
					return $time;
				},
				'format'         => 'raw',
			],
			[
				'attribute' => 'ma_phong_hoc',
				'value'     => function(LopTinChi $data) {
					return $data->phongHoc->ten;
				},
			],
			'sv_toi_thieu',
			'sv_toi_da',
			[
				'class'           => EditableColumn::class,
				'attribute'       => 'tg_bat_dau_hoc',
				'editableOptions' => [
					'name'          => 'notes',
					'asPopover'     => true,
					'inputType'     => Editable::INPUT_DATE,
					'placement'     => PopoverX::ALIGN_AUTO_BOTTOM,
					'value'         => "Raw denim you...",
					'header'        => 'Thời gian học dự kiến',
					'submitOnEnter' => false,
					'size'          => 'lg',
					'options'       => ['class' => 'form-control'],
				],
				'value' => function(LopTinChi $data){
					return date('l, d/m/Y',$data->tg_bat_dau_hoc);
				}
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
				'format'              => [
					'date',
					Yii::$app->params['format']['date'],
				],
			],
			[
				'label'          => 'Action',
				'headerOptions'  => [
					'style' => 'color:#337ab7',
					'width:100px',
				],
				'value'          => function(LopTinChi $data) {
					return '<div class="dropdown">
							  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Quản lý
							  <span class="caret"></span></button>
							  <ul class="dropdown-menu box-shadow">
							    <li><a href="#">Sửa</a></li>
							    <li><a href="' . Url::to([
							'lop-tin-chi/delete',
							'id' => $data->id,
						]) . '" data-method="post" data-confirm="Bạn chắc chắn xóa thông tin lớp tín chỉ?">Xóa</a></li>
							  </ul>
							</div>';
				},
				'format'        => 'raw',
			],
		],
	]); ?>
</div>
<div class="modal fade" id="tao-lich-dang-ki-modal" tabindex="-1" role="dialog" aria-labelledby="tao-lich-dang-ki-label" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title col-md-6" id="tao-lich-dang-ki-label">Tạo lịch đăng kí</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				...
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="tao-lop-tin-chi-modal" tabindex="-1" role="dialog" aria-labelledby="tao-lop-tin-chi-label" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title col-md-6" id="tao-lop-tin-chi-label">Tạo lịch đăng kí</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				...
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="tao-lich-hoc-modal" tabindex="-1" role="dialog" aria-labelledby="tao-lich-hoc-label" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title col-md-6" id="tao-lich-hoc-label">Tạo lịch học</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				...
			</div>
		</div>
	</div>s
</div>

<div class="modal fade" id="sua-lich-hoc-modal" tabindex="-1" role="dialog" aria-labelledby="sua-lich-hoc-label" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title col-md-6" id="sua-lich-hoc-label">Sửa lịch học</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				...
			</div>
		</div>
	</div>
</div>

<?php
$url_tao_lich        = Url::to(['lop-tin-chi/tao-lop-tin-chi']);
$url_tao_lop_tin_chi = Url::to(['lop-tin-chi/create']);
$url_tao_lich_hoc = Url::to(['lop-tin-chi/tao-lich-hoc']);
$url_sua_lich_hoc = Url::to(['lop-tin-chi/sua-lich-hoc']);
$this->registerJs(<<<JS
	$('#tao-lich-dang-ki-modal').on('hidden.bs.modal', function (e) {
	}).on('shown.bs.modal', function (e) {
		var modal = $(this);
		var button = $(e.relatedTarget);
		var id = button.attr("data-id");
		console.log(id);
		$.ajax({
			dataType : 'json',
			url : "$url_tao_lich",
			data: {
				id: id,
			},
			success:function(response){
				modal.find('.modal-body').html(response);
			}
		})
	})
	
	$('#tao-lop-tin-chi-modal').on('hidden.bs.modal', function (e) {
	}).on('shown.bs.modal', function (e) {
		var modal = $(this);
		var button = $(e.relatedTarget);
		var id = button.attr("data-id");
		console.log(id);
		$.ajax({
			type :'post',
			url : "$url_tao_lop_tin_chi",
			dataType : 'json',
			success:function(response){
				modal.find('.modal-body').html(response);
			}
		})
	})
	
	$('#tao-lich-hoc-modal').on('hidden.bs.modal', function (e) {
	}).on('shown.bs.modal', function (e) {
		var modal = $(this);
		var button = $(e.relatedTarget);
		var id = button.attr("data-id");
		$.ajax({
			type :'get',
			url : "$url_tao_lich_hoc",
			data : {
				id: id,
			},
			dataType : 'json',
			success:function(response){
				console.log(response)
				modal.find('.modal-body').html(response);
			}
		})
	})
	
		$('#sua-lich-hoc-modal').on('hidden.bs.modal', function (e) {
	}).on('shown.bs.modal', function (e) {
		var modal = $(this);
		var button = $(e.relatedTarget);
		var id = button.attr("data-id");
		$.ajax({
			type :'get',
			url : "$url_sua_lich_hoc",
			data : {
				id: id,
			},
			dataType : 'json',
			success:function(response){
				console.log(response)
				modal.find('.modal-body').html(response);
			}
		})
	})
JS
)
?>
