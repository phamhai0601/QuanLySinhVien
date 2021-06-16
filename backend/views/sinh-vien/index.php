<?php

use backend\models\SinhVien;
use common\models\LopHanhChinh;
use common\widgets\Paging;
use kartik\editable\Editable;
use kartik\grid\EditableColumn;
use kartik\grid\GridView;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\SinhVienSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/** @var int $pagesize */

$this->title = 'Sinh Viens';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sinh-vien-index">
	<?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'export' => false,
        'toggleData'=>false,
        'panel' => [
	        'heading'=>$this->title,
	        'type'=>'default',
	        'before'=>'<a type="button" href="'.Url::to(['sinh-vien/create']).'" class="btn btn-primary" >Thêm thông tin sinh viên</a>'
	                  .Paging::widget([
			        'current_pagesize' => $pagesize,
		        ]),
        ],
        'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> '.$this->title.'</h3>{summary}<div class="clearfix"></div>',

        'columns' => [
//            ['class' => 'yii\grid\SerialColumn'],
            'id',
            'ten',
            [
                'attribute' => 'email',
	            'contentOptions' => ['style'=>'width:100px;overflow: hidden;'],
	            'value' => function(SinhVien $data){
					return explode('@',$data->email)[0].'<br>@'.explode('@',$data->email)[1];
	            },
	            'format' => 'raw',
            ],
            [
                'label' => 'Username',
                'headerOptions' => ['style'=>'color:#337ab7'],
                'value' => function(SinhVien $data){
					if(!is_null($data->user)){
						return $data->user->username;
					}
					return '<a class="btn btn-primary" href="' . Url::to(['sinh-vien/cap-tai-khoan', 'id' =>$data->id]) . '">Cấp tài khoản</a>';
                },
	            'format' => 'raw'

            ],
            [
                'class'=> EditableColumn::class,
                'attribute' => 'lop_hanh_chinh',
	            'readonly' => function(SinhVien $data){
					if(!is_null($data->lopHanhChinh)){
						return true;
					}
					return false;
	            },
	            'editableOptions' => [
		            'asPopover' => true,
		            'header' => 'Status',
		            'inputType' => Editable::INPUT_DROPDOWN_LIST,
		            'data' => ArrayHelper::map(LopHanhChinh::find()->all(),'id','ma_lop'),
		            'options' => ['class'=>'form-control', 'prompt'=>'Chọn lớp hành chính...'],
				],
	            'value' => function(SinhVien $data){
					if(!is_null($data->lopHanhChinh)){
						return $data->lopHanhChinh->ma_lop;
					}
	            },
	            'format' => 'raw'
            ],
            'que_quan',
            [
                'attribute' => 'gioi_tinh',
	            'value' => function(SinhVien $data){
					return SinhVien::GIOTINH[$data->gioi_tinh];
	            }
            ],
	        [
		        'attribute' => 'tg_nhap_hoc',
		        'format'    => [
			        'date',
			        Yii::$app->params['format']['date'],
		        ],
	        ],
            'cmnd',
            [
                'attribute' => 'created_at',
	            'format'    => [
		            'date',
		            Yii::$app->params['format']['date'],
	            ],
            ],
//            'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>