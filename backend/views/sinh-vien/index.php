<?php

use common\widgets\Paging;
use kartik\grid\GridView;
use yii\helpers\Html;
/** @var int $pagesize */
/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\SinhVienSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Sinh Vien';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sinh-vien-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Sinh Vien', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

	<?= GridView::widget([
	    'dataProvider'         => $dataProvider,
	    'pjax'                 => true,
	    'panel'                => [
		    'type'           => GridView::TYPE_ACTIVE,
		    'heading'        => $this->title,
		    'summaryOptions' => [
			    'class' => 'pull-left',
		    ],
	    ],
	    'panelHeadingTemplate' => '{title}{summary}<div class="clearfix"></div>',
	    'toolbar'              => [
		    [
			    'content' => Paging::widget([
				    'current_pagesize' => $pagesize,
			    ]),
		    ],
	    ],
	    'filterModel'          => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'ten',
            'email:email',
            'que_quan',
            'gioi_tinh',
            'tg_nhap_hoc',
            'cmnd',
            'created_at',
            //'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
