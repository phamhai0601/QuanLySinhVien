<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    3/7/2021
 * @time    11:38 PM
 */

namespace common\models\payment;

use common\models\HoaDon;
use Yii;

class OnePay {

	const STATUS_SUCCESS = 0;

	public static function newInstance(HoaDon $hoaDon) {
		$responseData = Yii::$app->OPGateway->purchase([
			'ReturnURL'   => Yii::$app->params['onepay']['ReturnURL'],
			'OrderInfo'   => $hoaDon->id,
			'Amount'      => $hoaDon->theNap->gia_tien,
			'TicketNo'    => '127.0.0.1',
			'AgainLink'   => Yii::$app->params['onepay']['ReturnURL'],
			'Title'       => $hoaDon->theNap->name,
			'MerchTxnRef' => time(),
		]);
		if ($responseData->isOk) {
			return $responseData;
		}
		return null;
	}
}