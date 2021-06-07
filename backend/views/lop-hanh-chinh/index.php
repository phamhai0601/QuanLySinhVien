<?php

use common\widgets\Paging;
use kartik\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\LopHanhChinhSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/** @var int $pagesize */
//$this->title = 'Lop Hanh Chinhs';
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
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'ma_lop',
            'ma_giang_vien',
            'khoa_hoc',
            'created_at',

            ['class' => 'yii\grid\ActionColumn'],
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
  // do something...
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
