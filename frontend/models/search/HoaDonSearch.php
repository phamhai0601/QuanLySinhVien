<?php

namespace frontend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\HoaDon;

/**
 * HoaDonSearch represents the model behind the search form of `frontend\models\HoaDon`.
 */
class HoaDonSearch extends HoaDon
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'ma_the_nap', 'user_tao_hd', 'status', 'created_at'], 'integer'],
            [['ma_giao_dich', 'ma_ma_the'], 'safe'],
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
            'id' => $this->id,
            'ma_the_nap' => $this->ma_the_nap,
            'user_tao_hd' => $this->user_tao_hd,
            'status' => $this->status,
            'created_at' => $this->created_at,
        ]);

        $query->andFilterWhere(['like', 'ma_giao_dich', $this->ma_giao_dich])
            ->andFilterWhere(['like', 'ma_ma_the', $this->ma_ma_the]);

        return $dataProvider;
    }
}
