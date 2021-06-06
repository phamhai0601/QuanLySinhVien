<?php

namespace backend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\GiangVien;

/**
 * GiangVienhSearch represents the model behind the search form of `backend\models\GiangVien`.
 */
class GiangVienhSearch extends GiangVien
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'ma_lop_hanh_chinh', 'created_at'], 'integer'],
            [['ten', 'hoc_van', 'chuyen_nganh', 'que_quan'], 'safe'],
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
        $query = GiangVien::find();

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
            'ma_lop_hanh_chinh' => $this->ma_lop_hanh_chinh,
            'created_at' => $this->created_at,
        ]);

        $query->andFilterWhere(['like', 'ten', $this->ten])
            ->andFilterWhere(['like', 'hoc_van', $this->hoc_van])
            ->andFilterWhere(['like', 'chuyen_nganh', $this->chuyen_nganh])
            ->andFilterWhere(['like', 'que_quan', $this->que_quan]);

        return $dataProvider;
    }
}
