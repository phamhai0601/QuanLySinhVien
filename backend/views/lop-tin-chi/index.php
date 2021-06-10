<?php

use backend\models\LopTinChi;
use common\widgets\Paging;
use kartik\grid\DataColumn;
use kartik\grid\GridView;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\LopTinChiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/** @var int $pagesize */
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lop-tin-chi-index">
	<?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'export' => false,
        'toggleData' => false,
        'panel' => [
	        'heading'=>$this->title,
	        'type'=>'default',
	        'before'=>Html::a('<i class="glyphicon glyphicon-plus"></i> Tạo thông tin lớp tính chỉ', ['create'], ['class' => 'btn btn-primary btn-outline pull-left'])
	                  .Paging::widget([
			        'current_pagesize' => $pagesize,
		        ]),
	        'footer'=>false,
        ],
        'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> '.$this->title.'</h3>{summary}<div class="clearfix"></div>',
        'columns' => [
            'ten_lop',
            [
                'attribute' => 'ma_mon_hoc',
	            'value' => function(LopTinChi $data){
					return $data->monHoc->ten_mon_hoc;
	            }
            ],
            [
                'attribute' => 'ma_giang_vien',
	            'value' => function(LopTinChi $data){
					return $data->giangVien->ten;
	            }

            ],
            [
                'attribute' => 'ma_ki_hoc',
	            'value' => function(LopTinChi $data){
					return $data->kiHoc->ma_ki_hoc;
				}
            ],
            [
                'attribute' => 'ma_phong_hoc',
	            'value' => function(LopTinChi $data){
				return $data->phongHoc->ten;
	            }
            ],
            [
                'class'=> DataColumn::class,
                'attribute' => 'created_at',
	            'filterType' => GridView::FILTER_DATE_RANGE,
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
                'format'              => ['date',Yii::$app->params['format']['date'],
                ],
            ],
	        [
                'label' => 'Action',
		        'headerOptions' => ['style'=>'color:#337ab7'],
		        'value' => function(LopTinChi $data){
					return '<div class="dropdown">
							  <button class="btn btn-primary btn-outline dropdown-toggle" type="button" data-toggle="dropdown">Quản lý
							  <span class="caret"></span></button>
							  <ul class="dropdown-menu">
							    <li><a href="#">Sửa</a></li>
							    <li><a href="#" type="button" data-toggle="modal" data-target="#tao-lop-tin-chi-modal" data-id="'.$data->id.'" >Tạo lịch</a></li>
							    <li><a href="#">Xóa</a></li>
							  </ul>
							</div>';
		        },
		        'format' => 'raw'
	        ]
        ],
    ]); ?>
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
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div>

<?php
$url_tap_lich = \yii\helpers\Url::to(['lop-tin-chi/tao-lop-tin-chi']);
$this->registerJs(<<<JS
	$('#tao-lop-tin-chi-modal').on('hidden.bs.modal', function (e) {

	}).on('shown.bs.modal', function (e) {
		var modal = $(this);
		var button = $(e.relatedTarget);
		console.log(modal)
		console.log(button)
		var id = button.attr("data-id");
		console.log(id);
		$.ajax({
			dataType : 'json',
			url : "$url_tap_lich",
			data: {
				id: id,
			}
		})
	})

JS
)
?>
