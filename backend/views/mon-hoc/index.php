<?php

use backend\models\MonHoc;
use common\widgets\Paging;
use kartik\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\MonHocSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/** @var int $pagesize */

$this->params['breadcrumbs'][] = $this->title;
?>
<div class="mon-hoc-index">
	<?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'export' => false,
        'toggleData'=>false,
        'panel' => [
	        'heading'=>$this->title,
	        'type'=>'default',
	        'before'=>'<button type="button" class="btn btn-primary btn-outline" data-toggle="modal" data-target="#modal-tao-mon-hoc">Tạo thông tin môn học</button>'
                .Paging::widget([
			        'current_pagesize' => $pagesize,
		        ]),
	        'footer'=>false,
        ],
        'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> '.$this->title.'</h3>{summary}<div class="clearfix"></div>',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'id',
            'ten_mon_hoc',
            [
                'attribute' => 'ma_bo_mon',
	            'value' => function(MonHoc $data){
					return $data->boMon->ten;
	            }
            ],
            'tin_chi',
            'dieu_kien',
            'created_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
<div class="modal fade" id="modal-tao-mon-hoc" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title col-md-6" id="exampleModalLabel">Tạo thông tin môn học</h3>
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
$url_create = Url::to(['mon-hoc/create']);
$this->registerJs(<<<JS
	$('#modal-tao-mon-hoc').on('hidden.bs.modal', function (e) {
		
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
