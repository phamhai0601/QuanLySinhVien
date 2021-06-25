<?php

namespace frontend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\LichHoc;

/**
 * LichHocSearch represents the model behind the search form of `frontend\models\LichHoc`.
 */
class LichHocSearch extends LichHoc {

	public $startTimeWeek = null;

	public $endTimeWeek   = null;

	public function init() {
		$this->startTimeWeek = strtotime('monday this week');
		$this->endTimeWeek   = strtotime('23:59:00 sunday this week');
		parent::init();
	}

	/**
	 * {@inheritdoc}
	 */
	public function rules() {
		return [
			[
				[
					'id',
					'ngay_hoc',
					'gio_hoc',
					'created_at',
				],
				'integer',
			],
			[
				['ma_lop_tin_chi'],
				'safe',
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
		$query = LichHoc::find();
		// add conditions that should always apply here
		$dataProvider = new ActiveDataProvider([
			'query' => $query,
			'sort'  => [
				'defaultOrder' => [
					'ngay_hoc' => SORT_ASC,
				],
			],
		]);
		$this->load($params);
		if (!$this->validate()) {
			// uncomment the following line if you do not want to return any records when validation fails
			// $query->where('0=1');
			return $dataProvider;
		}
		// grid filtering conditions
		$query->andFilterWhere([
			'id'         => $this->id,
			'gio_hoc'    => $this->gio_hoc,
			'created_at' => $this->created_at,
		]);
		$query->andFilterWhere([
			'like',
			'ma_lop_tin_chi',
			$this->ma_lop_tin_chi,
		]);
		$query->andWhere([
			'>',
			'ngay_hoc',
			$this->startTimeWeek,
		])->andWhere([
			'<',
			'ngay_hoc',
			$this->endTimeWeek,
		]);
		return $dataProvider;
	}
}
