<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    9/6/2021
 * @time    8:23 AM
 */
namespace common\traits;
use kartik\daterange\DateRangeBehavior;
use yii\db\ActiveQuery;

trait DateRangeTrait {

	public $createTimeStart;

	public $createTimeEnd;

	/**
	 * @return array
	 */
	public function rule() {
		return [
			['created_at'],
			'match',
			'pattern' => '/^.+\s\-\s.+$/',
		];
	}

	/**
	 * {@inheritDoc}
	 */
	public function behavior() {
		return [
			'class'              => DateRangeBehavior::class,
			'attribute'          => 'created_at',
			'dateStartAttribute' => 'createTimeStart',
			'dateEndAttribute'   => 'createTimeEnd',
		];
	}

	/**
	 * @param ActiveQuery $query
	 */
	public function queryFilterDateRange(ActiveQuery &$query) {
		$query->andFilterWhere([
			'>=',
			'created_at',
			$this->createTimeStart,
		])->andFilterWhere([
			'<',
			'created_at',
			$this->createTimeEnd,
		]);
	}
}