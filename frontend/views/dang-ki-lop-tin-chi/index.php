<?php

use common\helper\DateHelper;
use common\models\LichHoc;
use common\models\SvDkiTinChi;
use common\widgets\Paging;
use frontend\models\DangKiLopTinChi;
use kartik\grid\DataColumn;
use kartik\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\DangKiLopTinChiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/** @var int $pagesize */
$this->title                   = 'Dang Ki Lop Tin Chis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dang-ki-lop-tin-chi-index">
	<div class="dang-ki-lop-tin-chi-index">
		<?= GridView::widget([
			'dataProvider'         => $dataProvider,
			'filterModel'          => $searchModel,
			'export'               => false,
			'toggleData'           => false,
			'panel'                => [
				'heading' => $this->title,
				'type'    => 'primary',
				'before'  => Paging::widget([
					'current_pagesize' => $pagesize,
				]),
			],
			'panelHeadingTemplate' => '<h3 class="panel-title col-md-6" style="padding: 0px"><i class="fas fa-box"></i> ' . $this->title . '</h3>{summary}<div class="clearfix"></div>',
			'rowOptions'           => function(DangKiLopTinChi $data) {
				$svDangKyTinChi = SvDkiTinChi::find()->where(['ma_lop_tin_chi' => $data->ma_lop_tin_chi])->andWhere(['id_sinh_vien' => $this->sinhVien->id])->one();
				if ($svDangKyTinChi) {
					return ['style' => 'display:none'];
				}
			},
			'columns'              => [
				[
					'label'         => 'Đăng ký',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						try {
							$time_start = $data->lopTinChi->lichDangKy->tg_bat_dau;
							$time_end   = $data->lopTinChi->lichDangKy->tg_ket_thuc;
							if ($time_start < time() && time() < $time_end) {
								return '<a class="btn btn-success" href="' . Url::to([
										'dang-ki-lop-tin-chi/dang-ky-tin-chi',
										'id' => $data->id,
									]) . '">Đăng ký</a>';
							}
							return '<a class="btn btn-warning" disabled="disabled">Đăng ký</a>';
						}catch (Exception $e){}
						return 'not-set';
					},
					'format'        => 'raw',
				],
				[
					'attribute' => 'ma_lop_tin_chi',
				],
				[
					'label'         => 'Môn học - Giảng viên',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						return $data->lopTinChi->monHoc->ten_mon_hoc . '<br>' . $data->lopTinChi->giangVien->ten;
					},
					'format'        => 'raw',
				],
				[
					'label'         => 'Tối thiểu',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						return $data->lopTinChi->sv_toi_thieu . ' sv';
					},
				],
				[
					'label'         => 'Tối đa',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						return $data->lopTinChi->sv_toi_da . ' sv';
					},
				],
				[
					'label'         => 'Đã đăng ký',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						$svDangKy = SvDkiTinChi::find()->where(['ma_lop_tin_chi' => $data->ma_lop_tin_chi])->count();
						return $svDangKy . ' sv';
					},
				],
				[
					'label'         => 'Thời gian đăng ký',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value'         => function(DangKiLopTinChi $data) {
						return 'từ <b>' . date(Yii::$app->params['date'], $data->tg_bat_dau) . '</b><br>' . 'đến <b>' . date(Yii::$app->params['date'], $data->tg_ket_thuc).'</b>';
					},
					'format'        => 'raw',
				],
				[
					'label' => 'Lịch học dự kiến',
					'headerOptions' => ['style' => 'color:#3c8dbc'],
					'value' => function(DangKiLopTinChi $data) {
						/** @var LichHoc $lichHoc */
						$lichHocs = $data->lopTinChi->lichHoc;
						$lis      = '';
						foreach ($lichHocs as $lichHoc) {
							$lis .= '<li>' . DateHelper::ShowWeekVN(date('l, d.m.Y H:i', $lichHoc->ngay_hoc)) . '</li>';
						}
						return '<ul>' . $lis . '</ul>';
					},
					'format' => 'raw'
				],
				[
					'class'               => DataColumn::class,
					'attribute'           => 'tinh_trang',
					'filter'              => false,
					'filterType'          => GridView::FILTER_SELECT2,
					'filterWidgetOptions' => [
						'data'          => DangKiLopTinChi::TRANGTHAI,
						'options'       => ['placeholder' => 'Chọn trạng thái ...'],
						'pluginOptions' => [
							'allowClear' => true,
						],
					],
					'value'               => function(DangKiLopTinChi $data) {
						return '<label class="label label-' . DangKiLopTinChi::TRANGTHAI_LABEl[$data->tinh_trang] . '" style="font-size: larger">' . DangKiLopTinChi::TRANGTHAI[$data->tinh_trang] . '</label>';
					},
					'format'              => 'raw',
				],
			],
		]); ?>
	</div>
</div>
<div>
	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title">Đã Đăng Ký</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped table-hover">
				<thead>
				<tr>
					<th>Đăng ký</th>
					<th>Mã lớp tín chỉ</th>
					<th>Môn học - Giảng viên</th>
					<th>Tối thiểu</th>
					<th>Tối đa</th>
					<th>Đã đăng kí</th>
					<th>Thời gian đăng ký</th>
					<th>Lịch học dự kiến</th>
				</tr>
				</thead>
				<tbody>
				<?php if (!empty($daDangKy)): ?>
					<?php /** @var DangKiLopTinChi $dangKy */
					foreach ($daDangKy as $dangKy): ?>
						<tr data-id="<?= $dangKy->id ?>">
							<td><b style="color: green">Đăng ký thành công</b></td>
							<td><?= $dangKy->ma_lop_tin_chi ?></td>
							<td><?= $dangKy->lopTinChi->monHoc->ten_mon_hoc ?>
								<br><?= $dangKy->lopTinChi->giangVien->ten ?></td>
							<td><?= $dangKy->lopTinChi->sv_toi_thieu ?></td>
							<td><?= $dangKy->lopTinChi->sv_toi_da ?></td>
							<td>
								<?php
								$svDangKy = SvDkiTinChi::find()->where(['ma_lop_tin_chi' => $dangKy->ma_lop_tin_chi])->count();
								echo $svDangKy . ' sv';
								?>
							</td>
							<td>từ <b><?= date(Yii::$app->params['date'], $dangKy->tg_bat_dau) ?></b><br>đến
								<b><?= date(Yii::$app->params['date'], $dangKy->tg_ket_thuc) ?></b>';
							</td>
							<td>
								<?php
								$lichHocs = $dangKy->lopTinChi->lichHoc;
								$lis      = '';
								foreach ($lichHocs as $lichHoc) {
									$lis .= '<li>' . DateHelper::ShowWeekVN(date('l, d.m.Y H:i', $lichHoc->ngay_hoc)) . '</li>';
								}
								echo '<ul>' . $lis . '</ul>';
								?>
							</td>
						</tr>
					<?php endforeach; ?>
				<?php endif; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
