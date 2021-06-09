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
	        'before'=>Html::a('<i class="glyphicon glyphicon-plus"></i> Tạo thông tin lớp tính chỉ', ['create'], ['class' => 'btn btn-success btn-outline pull-left'])
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
                'format'              => [
	                'date',
	                Yii::$app->params['format']['date'],
                ],
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
