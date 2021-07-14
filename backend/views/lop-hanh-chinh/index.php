<?php

use backend\models\LopHanhChinh;
use common\helper\DateHelper;
use common\models\TgNopHocPhi;
use common\widgets\Paging;
use kartik\grid\DataColumn;
use kartik\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\LopHanhChinhSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/** @var int $pagesize */
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lop-hanh-chinh-index">
    <?= GridView::widget([
	    'dataProvider'         => $dataProvider,
	    'filterModel'          => $searchModel,
	    'export'               => false,
	    'toggleData'           => false,
	    'panel'                => [
		    'heading' => $this->title,
		    'type'    => 'default',
		    'before'  => '<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-tao-lop-tin-chi"><i class="fa fa-plus" aria-hidden="true"></i> Tạo lớp hành chính</button>' . Paging::widget([
				    'current_pagesize' => $pagesize,
			    ]),
	    ],
	    'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> ' . $this->title . '</h3>{summary}<div class="clearfix"></div>',
	    'columns'              => [
		    'ma_lop',
		    [
			    'label'         => 'Tên Lớp',
			    'headerOptions' => ['style' => 'color:#337ab7'],
			    'value'         => function(LopHanhChinh $data) {
				    return $data->khoa_hoc . 'A' . $data->ma_lop;
			    },
		    ],
		    [
			    'attribute' => 'ma_giang_vien',
			    'value'     => function(LopHanhChinh $data) {
				    return $data->giangVien->ten;
			    },
		    ],
		    'khoa_hoc',
		    [
			    'attribute' => 'action',
			    'value'     => function(LopHanhChinh $data) {
				    $tgNopHocPhi = TgNopHocPhi::find()->where(['id_lop_hoc' => $data->id])->andWhere(['ki_hoc' => $this->kiHoc->id])->one();
				    if ($tgNopHocPhi) {
					    return '<label class="label label-' . TgNopHocPhi::STATUS_LABEL[$tgNopHocPhi->status] . '">' . TgNopHocPhi::STATUS[$tgNopHocPhi->status] . '</label>';
				    }
			    },
			    'format'    => 'raw',
		    ],
		    [
			    'label'          => 'Hóa Đơn',
			    'headerOptions'  => [
				    'style' => 'color: #3c8dbc',
				    'class' => 'text-center',
			    ],
			    'contentOptions' => ['class' => 'text-center'],
			    'value'          => function(LopHanhChinh $data) {
				    $tgNopHocPhi = TgNopHocPhi::find()->where(['id_lop_hoc' => $data->id])->andWhere(['ki_hoc' => $this->kiHoc->id])->one();
				    try {
					    if ($tgNopHocPhi->status == TgNopHocPhi::STATUS_SUCCESS) {
						    return '<span class="text-success"><i class="fa fa-check fa-lg" aria-hidden="true"></i></span>';
					    } else if ($tgNopHocPhi->status == TgNopHocPhi::STATUS_PENDING) {
						    return '<i class="fa fa-spinner fa-pulse fa-fw"></i>';
					    }
				    } catch (Exception $exception) {
				    }
				    return '<a data-id="' . $data->id . '" data-toggle="modal" data-target="#tao-tg-nop-hoc-phi"><i class="fa fa-file-text fa-lg" aria-hidden="true"></i></a>';
			    },
			    'format'         => 'raw',
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
			    'value'               => function(LopHanhChinh $data) {
				    return DateHelper::ShowWeekVN(date(Yii::$app->params['date'], $data->created_at));
			    },
		    ],
		    [
			    'class'         => 'yii\grid\ActionColumn',
			    'header'        => 'Action',
			    'headerOptions' => ['style' => 'color:#337ab7'],
		    ],
	    ],
    ]); ?>
</div>
<div class="modal fade" id="modal-tao-lop-tin-chi" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title" id="exampleModalLabel" style="display: inline">Tạo thông tin lớp hành chính</h3>
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

<div class="modal fade" id="tao-tg-nop-hoc-phi">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Tạo hóa đơn học phí</h4>
			</div>
			<div class="modal-body">
				Modal body ...
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<?php
$url_create          = Url::to(['lop-hanh-chinh/create']);
$url_hoa_don_hoc_phi = Url::to(['lop-hanh-chinh/tao-hoa-don-hoc-phi']);
$this->registerJs(<<<JS
	$('#tao-tg-nop-hoc-phi').on('hidden.bs.modal', function (e) {
	}).on('shown.bs.modal',function(e){
		var modal = $(this)
		var button = e.relatedTarget
		var id = button.getAttribute("data-id");
		$.ajax({
			type:'get',
			url:"$url_hoa_don_hoc_phi",
			data:{
				id:id,	
			},
			dataType:'json',
			success:function (response){
				modal.find('.modal-body').html(response);
			}
		})
	})
	
	$('#modal-tao-lop-tin-chi').on('hidden.bs.modal', function (e) {
	}).on('shown.bs.modal',function(e){
		var modal = $(this);
		var button = e.relatedTarget;
		$.ajax({
			type:'post',
			url:'$url_create',
			dataType:'json',
			success:function (response){
				modal.find('.modal-body').html(response)
			}
		})
	})
JS
);
?>
