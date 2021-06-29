<?php
/**
 * Created by FesVPN.
 * @project Default (Template) Project
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    30/6/2021
 * @time    12:47 AM
 */
/* @var $this \yii\web\View */

/* @var $theNaps array|\common\models\TheNap[]|\yii\db\ActiveRecord[] */

use yii\helpers\Url;

?>
<div class="the-nap container">
	<div class="row">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">Mua mã thẻ nạp LMS</h3>
			</div>
			<div class="panel-body">
				<h4>Chọn loại thẻ:</h4>
				<div class="col-md-12">
					<?php foreach ($theNaps as $theNap): ?>
						<div class="col-md-3">
							<label>
								<input type="radio" name="the-nap" value="<?= $theNap->id ?>"/>
								<img src="https://cheapgame.asia/1691/xbox-card-10-usd.jpg" width="100%"/>
							</label>
						</div>
					<?php endforeach; ?>
				</div>
			</div>
			<div class="panel-footer">
				<section class="invoice">
					<!-- title row -->
					<div class="row">
						<div class="col-xs-12">
							<h2 class="page-header">
								<i class="fa fa-globe"></i> AdminLTE, Inc.
								<small class="pull-right">Date: 2/10/2014</small>
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
								795 Folsom Ave, Suite 600<br>
								San Francisco, CA 94107<br>
								Phone: (804) 123-5432<br>
								Email: info@almasaeedstudio.com
							</address>
						</div>
						<!-- /.col -->
						<div class="col-sm-4 invoice-col">
							To
							<address>
								<strong>John Doe</strong><br>
								795 Folsom Ave, Suite 600<br>
								San Francisco, CA 94107<br>
								Phone: (555) 539-1037<br>
								Email: john.doe@example.com
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
									<td>Call of Duty</td>
									<td>455-981-221</td>
									<td>El snort testosterone trophy driving gloves handsome</td>
									<td>$64.50</td>
								</tr>
								<tr>
									<td>1</td>
									<td>Need for Speed IV</td>
									<td>247-925-726</td>
									<td>Wes Anderson umami biodiesel</td>
									<td>$50.00</td>
								</tr>
								<tr>
									<td>1</td>
									<td>Monsters DVD</td>
									<td>735-845-642</td>
									<td>Terry Richardson helvetica tousled street art master</td>
									<td>$10.70</td>
								</tr>
								<tr>
									<td>1</td>
									<td>Grown Ups Blue Ray</td>
									<td>422-568-642</td>
									<td>Tousled lomo letterpress</td>
									<td>$25.99</td>
								</tr>
								</tbody>
							</table>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->

					<div class="row">
						<!-- accepted payments column -->
						<div class="col-xs-6">
							<p class="lead">Payment Methods:</p>
							<img src="../../dist/img/credit/visa.png" alt="Visa">
							<img src="../../dist/img/credit/mastercard.png" alt="Mastercard">
							<img src="../../dist/img/credit/american-express.png" alt="American Express">
							<img src="../../dist/img/credit/paypal2.png" alt="Paypal">

							<p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
								Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg
								dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.
							</p>
						</div>
						<!-- /.col -->
						<div class="col-xs-6">
							<p class="lead">Amount Due 2/22/2014</p>

							<div class="table-responsive">
								<table class="table">
									<tr>
										<th style="width:50%">Subtotal:</th>
										<td>$250.30</td>
									</tr>
									<tr>
										<th>Tax (9.3%)</th>
										<td>$10.34</td>
									</tr>
									<tr>
										<th>Shipping:</th>
										<td>$5.80</td>
									</tr>
									<tr>
										<th>Total:</th>
										<td>$265.24</td>
									</tr>
								</table>
							</div>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->

					<!-- this row will not appear when printing -->
					<div class="row no-print">
						<div class="col-xs-12">
							<a href="invoice-print.html" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
							<button type="button" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Submit Payment
							</button>
							<button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
								<i class="fa fa-download"></i> Generate PDF
							</button>
						</div>
					</div>
				</section>
<!--				<h4>Chi tiết thẻ:</h4>-->
<!--				<table class="table table-striped table-hover">-->
<!--					<tbody>-->
<!--					<tr>-->
<!--						<td>Loại thẻ:</td>-->
<!--						<td style="font-weight: bold"><span id="loai-the"></span></td>-->
<!--					</tr>-->
<!--					<tr>-->
<!--						<td>Giá tiền:</td>-->
<!--						<td style="font-weight: bold"><span id="gia-tien"></span> VNĐ</td>-->
<!--					</tr>-->
<!--					<tr>-->
<!--						<td>Số OCC:</td>-->
<!--						<td style="font-weight: bold"><span id="so-occ"></span> OCC</td>-->
<!--					</tr>-->
<!--					</tbody>-->
<!--				</table>-->
<!--				<button class="btn btn-primary" name="thanh-toan" data-toggle="loading" data-loading-time="15" data-loading-text="Thanh toán">Thanh toán</button>-->
			</div>
		</div>
	</div>
</div>
<?php
$urlGetThongTinCard = Url::to(['dich-vu/get-thong-tin-card']);
$this->registerJs(<<<JS
	$(document).on('click','input[name="the-nap"]',function(){
		var input = $(this);
		var idCard = input.val();
		$.ajax({
	        type: 'POST',
	        url:"$urlGetThongTinCard",
            data: {
	        	idCard:idCard,	
	        },
	        dataType:"json",
	        success: function (response) {
	        	$('#loai-the').html(response.message.name);
	        	$('#gia-tien').html(response.message.gia_tien);
	        	$('#so-occ').html(response.message.occ);
	        	$('button[name="thanh-toan"]').attr('data-id',response.message.id);
	        },
	    });
	});
	
	
JS
);
?>



