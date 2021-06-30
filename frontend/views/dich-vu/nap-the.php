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
				<h4>Chi tiết thẻ:</h4>
				<table class="table table-striped table-hover">
					<tbody>
					<tr>
						<td>Loại thẻ:</td>
						<td style="font-weight: bold"><span id="loai-the"></span></td>
					</tr>
					<tr>
						<td>Giá tiền:</td>
						<td style="font-weight: bold"><span id="gia-tien"></span> VNĐ</td>
					</tr>
					<tr>
						<td>Số OCC:</td>
						<td style="font-weight: bold"><span id="so-occ"></span> OCC</td>
					</tr>
					</tbody>
				</table>
				<a class="btn btn-primary" href="#" disabled name="thanh-toan" >Tạo hóa đơn</a>
			</div>
		</div>
	</div>
</div>
<?php
$urlTaoHoaDon = Url::to(['dich-vu/tao-hoa-don']);
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
	        	$('a[name="thanh-toan"]').attr('href',"$urlTaoHoaDon?id="+idCard).removeAttr('disabled');
	        	
	        },
	    });
	});
	
	
JS
);
?>



