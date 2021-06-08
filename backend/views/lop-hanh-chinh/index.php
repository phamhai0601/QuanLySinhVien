<?php

use backend\models\LopHanhChinh;
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
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'export' => false,
        'toggleData'=>false,
        'panel' => [
	        'heading'=>$this->title,
	        'type'=>'default',
	        'before'=>'<button type="button" class="btn btn-success btn-outline" data-toggle="modal" data-target="#modal-tao-lop-tin-chi">Tạo lớp hành chính</button>'
	        .Paging::widget([
			        'current_pagesize' => $pagesize,
		        ]),
	        'footer'=>false,
        ],
        'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> '.$this->title.'</h3>{summary}<div class="clearfix"></div>',
        'columns' => [
            'ma_lop',
            [
            	'label' => 'Tên Lớp',
	            'headerOptions' => ['style'=>'color:#337ab7'],
	            'value' => function(LopHanhChinh $data){
    	            return $data->khoa_hoc.'A'.$data->ma_lop;
	            }

            ],
            [
                'attribute' => 'ma_giang_vien',
                'value' => function(LopHanhChinh $data){
					return $data->giangVien->ten;
	            }
            ],
            'khoa_hoc',
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
			        'datetime',
			        'php:'.Yii::$app->params['format']['date'],
		        ],
	        ],
            [
                'class' => 'yii\grid\ActionColumn',
	            'header' => 'Action',
                'headerOptions' => ['style'=>'color:#337ab7'],
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

<?php
$url_create = Url::to(['lop-hanh-chinh/create']);
$this->registerJs(<<<JS
	$('#modal-tao-lop-tin-chi').on('hidden.bs.modal', function (e) {
	}).on('shown.bs.modal',function(e){
		var modal = $(this);
		console.log(modal);
		var button = e.relatedTarget;
		$.ajax({
			type:'post',
			url:'$url_create',
			dataType:'json',
			success:function (response){
				modal.find('.modal-body').html(response);
			}
		});
	});

JS
)

?>
