<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\KiHoc */
$this->title = 'Create Ki Hoc';
$this->params['breadcrumbs'][] = [
	'label' => 'Ki Hocs',
	'url'   => ['index'],
];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ki-hoc-create">
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><?=$this->title?></h3>
			</div>
			<div class="panel-body">
				<?= $this->render('_form', [
					'model' => $model,
				]) ?>
			</div>
		</div>
	</div>
</div>
