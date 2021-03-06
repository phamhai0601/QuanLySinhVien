<?php

namespace frontend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\DangKiDichVu;

/**
 * DangKiDichVuSearch represents the model behind the search form of `frontend\models\DangKiDichVu`.
 */
class DangKiDichVuSearch extends DangKiDichVu
{
	/**
	 * {@inheritdoc}
	 */
	public function rules()
	{
		return [
			[['id', 'ma_tai_khoan', 'han_su_dung', 'ma_dich_vu', 'trang_thai', 'created_at'], 'integer'],
		];
	}

	/**
	 * {@inheritdoc}
	 */
	public function scenarios()
	{
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
	public function search($params)
	{
		$query = DangKiDichVu::find();

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
			'id' => $this->id,
			'ma_tai_khoan' => $this->ma_tai_khoan,
			'han_su_dung' => $this->han_su_dung,
			'ma_dich_vu' => $this->ma_dich_vu,
			'trang_thai' => $this->trang_thai,
			'created_at' => $this->created_at,
		]);

		return $dataProvider;
	}
}