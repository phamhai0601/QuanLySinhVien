<?php

use backend\models\KiHoc;
use common\widgets\Paging;
use kartik\grid\GridView;
use yii\grid\DataColumn;
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\KiHocSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/** @var int $pagesize */

$this->params['breadcrumbs'][] = $this->title;

?>
<div class="ki-hoc-index">
	<?=
    GridView::widget([
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
            ['class' => 'yii\grid\SerialColumn'],
            'ma_ki_hoc',
	        [
                'attribute' => 'tg_bat_dau',
		        'value' => function(KiHoc $data){
    	            return date(Yii::$app->params['format']['date'],$data->tg_bat_dau);
		        }
            ],
	        [
		        'attribute' => 'tg_ket_thuc',
		        'value' => function(KiHoc $data){
			        return date(Yii::$app->params['format']['date'],$data->tg_ket_thuc);
		        }
	        ],
	        [
		        'attribute' => 'nam_hoc',
		        'value'     => function(KiHoc $data) {
			        return date('Y', $data->nam_hoc);
		        },
	        ],
	        [
		        'attribute' => 'created_at',
		        'value'     => function(KiHoc $data) {
			        return date(Yii::$app->params['format']['date'], $data->created_at);
		        },
	        ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
