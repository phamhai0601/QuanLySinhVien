<?php
/**
 * Created by FesVPN.
 * @project Default (Template) Project
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    1/7/2021
 * @time    1:39 AM
 */
/* @var $this \yii\web\View */
/* @var $model \common\models\HoaDon */
?>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Invoice
		<small>#007612</small>
	</h1>
</section>
<!-- Main content -->
<section class="invoice">
	<!-- title row -->
	<div class="row">
		<div class="col-xs-12">
			<h2 class="page-header">
				<i class="fa fa-globe"></i> AdminLTE, Inc.
				<small class="pull-right">Date: <?= date('Y-m-d', $model->created_at) ?></small>
			</h2>
		</div>
		<!-- /.col -->
	</div>
	<!-- info row -->
	<div class="row invoice-info">
		<div class="col-sm-4 invoice-col">
			From
			<address>
				<strong>Admin, Inc.</strong><br>
				96, Định Công, Thanh Xuân,TP Hà Nội<br>
				Phone: (804) 123-5432<br>
				Email: fithou@hou.edu.com
			</address>
		</div>
		<!-- /.col -->
		<div class="col-sm-4 invoice-col">
			To
			<address>
				<strong><?= $model->user->sinhVien->ten ?></strong><br>
				<?= $model->user->sinhVien->que_quan ?><br>
				Email: <?= $model->user->sinhVien->email ?>
			</address>
		</div>
		<!-- /.col -->
		<div class="col-sm-4 invoice-col">
			<b>Invoice #007612</b><br>
			<br>
			<b>Order ID:</b> 4F3S8J<br>
			<b>Payment Due:</b> 2/22/2014<br>
			<b>Account:</b> 968-34567
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->

	<!-- Table row -->
	<div class="row">
		<div class="col-xs-12 table-responsive">
			<table class="table table-striped">
				<thead>
				<tr>
					<th>Qty</th>
					<th>Product</th>
					<th>Serial #</th>
					<th>Description</th>
					<th>Subtotal</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>1</td>
					<td><?= $model->theNap->name ?></td>
					<td><?php
						try {
							echo $model->maThe->ma_the;
						} catch (Exception $exception) {
							echo 'not-set';
						} ?>
					</td>
					<td>El snort testosterone trophy driving gloves handsome</td>
					<td><?= number_format($model->theNap->gia_tien, 0, ',', ' '); ?> vnđ</td>
				</tr>
				</tbody>
			</table>
		</div>
		<!-- /.col -->
	</div>

	<div class="row no-print">
		<div class="col-xs-12">
			<button type="button" class="btn btn-success pull-right">
				<i class="fa fa-credit-card" data-toggle="loading" data-></i> Thanh Toán
			</button>

		</div>
	</div>
</section>
<!-- /.content -->
<div class="clearfix"></div>
