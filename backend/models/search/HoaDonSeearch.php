<?php

namespace backend\models\search;

use kartik\daterange\DateRangeBehavior;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\HoaDon;

/**
 * HoaDonSeearch represents the model behind the search form of `backend\models\HoaDon`.
 */
class HoaDonSeearch extends HoaDon {

	public $createTimeStart = null;

	public $createTimeEnd   = null;

	/**
	 * {@inheritdoc}
	 */
	public function rules() {
		return [
			[
				[
					'id',
					'ma_the_nap',
					'user_tao_hd',
					'status',
				],
				'integer',
			],
			[
				[
					'ma_giao_dich',
					'ma_ma_the',
					'created_at',
				],
				'safe',
			],
		];
	}

	/**
	 * @return \string[][]
	 */
	public function behaviors() {
		return [
			[
				'class'              => DateRangeBehavior::class,
				'attribute'          => 'created_at',
				'dateStartAttribute' => 'createTimeStart',
				'dateEndAttribute'   => 'createTimeEnd',
			],
		];
	}

	/**
	 * {@inheritdoc}
	 */
	public function scenarios() {
		// bypass scenarios() implementation in the parent class
		return Model::scenarios();
	}

	/**
	 * Creates data provider instance with search query applied
	 *
	 * @param array $params
	 *
	 * @return ActiveDataProvider
	 */
	public function search($params) {
		$query = HoaDon::find();
		// add conditions that should always apply here
		$dataProvider = new ActiveDataProvider([
			'query' => $query,
		]);
		$this->load($params);
		if (!$this->validate()) {
			// uncomment the following line if you do not want to return any records when validation fails
			// $query->where('0=1');
			return $dataProvider;
		}
		// grid filtering conditions
		$query->andFilterWhere([
			'id'          => $this->id,
			'ma_the_nap'  => $this->ma_the_nap,
			'user_tao_hd' => $this->user_tao_hd,
			'status'      => $this->status,
		]);
		$query->andFilterWhere([
			'like',
			'ma_giao_dich',
			$this->ma_giao_dich,
		])->andFilterWhere([
			'like',
			'ma_ma_the',
			$this->ma_ma_the,
		]);
		$query->andFilterWhere([
			'>=',
			'created_at',
			$this->createTimeStart,
		])->andFilterWhere([
			'<',
			'created_at',
			$this->createTimeEnd,
		]);
		return $dataProvider;
	}
}
