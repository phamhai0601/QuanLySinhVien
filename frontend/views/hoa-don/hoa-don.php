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

/* @var $model HoaDon */

use common\models\HoaDon;
use yii\helpers\Url;

?>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Invoice:
		<small>#<?= $model->id ?></small>
	</h1>
	<?php if ($model->status == HoaDon::STATUS_SUCCESS): ?>
		<h4 class="text-success"><b>Hóa đơn đã được thanh toán thành công</b></h4>
	<?php endif; ?>
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
			<?php if ($model->status === HoaDon::STATUS_PENDING): ?>
				<button class="btn btn-success pull-right" name="thanh-toan" data-id="<?= $model->id ?>">
					<i class="fa fa-credit-card" data-toggle="loading"></i> Thanh Toán
				</button>
			<?php endif; ?>
		</div>
	</div>
</section>
<!-- /.content -->
<div class="clearfix"></div>
<div id="payment-background">
	<p class="focus">Don’t see the secure browser? We’ll help you re-launch the window to complete your purchase.
		<a href="javascript:void(0)" data-focus="payment">Click to Continue</a>
		<a href="javascript:void(0)" onclick="location.reload();">Close</a>
	</p>
	<p class="loading" style="display: none">
		Please wait a moment, we’re checking your payment!<br>
		<i class="fa fa-spin fa-spinner fa-3x"></i>
	</p>
</div>
<?php
$urlGetLinkPayment    = Url::to(['dich-vu/get-link-payment']);
$urlCheckStatusHoaDon = Url::to([
	'dich-vu/check-status-hoa-don',
	'id' => $model->id,
], true);
$statusSuccess        = HoaDon::STATUS_SUCCESS;
$this->registerJs(<<<JS
	var paymentWindow = null;

	function paymentBackground(type, sel) {
		var bg = $("#payment-background");
		if(sel === 'focus') {
			bg.find('.focus').fadeIn();
			bg.find('.loading').fadeOut();
		} else {
			bg.find('.focus').fadeOut();
			bg.find('.loading').fadeIn();
		}
		if(type === 'hide') {
			bg.fadeOut();
		} else {
			bg.fadeIn();
		}
	}
	
	function checkStatusHoaDon(url){
		$.ajax({
			type:'post',
			url:url,
			dataType:'json',
			success:function(response){
				if(response.error == 0){
					if(response.status == $statusSuccess){
						paymentWindow.close();
						paymentBackground('hide','loading');
						location.reload();
					}
				}
			}
		})
	}
		
	$(document).on('click','button[name="thanh-toan"]',function(){
		paymentWindow = window.open('', '_blank', 'height=500,width=800');
		paymentWindow.document.write('Loading payment page...');
		paymentBackground('show','loading')
		var button = $(this);
		var id_the_nap = button.attr('data-id');
		$.ajax({
			type:'post',
			url:"$urlGetLinkPayment",
			data:{
				id:	id_the_nap,
			},
			dataType:'json',
			success:function (response){
				if(response.error == 0){
					paymentWindow.location.href = response.url;
					setInterval(function(){ 
						if(paymentWindow.closed){
							paymentBackground('show','focus')
						}
						checkStatusHoaDon("$urlCheckStatusHoaDon");
					}, 1000);
				}else{
					location.reload();
				}
			}
		});
	})
	
	$(document).on('click','a[data-focus="payment"]',function(){
		$('button[name="thanh-toan"]').trigger('click');
	});
JS
)
?>
