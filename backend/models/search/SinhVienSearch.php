<?php

namespace backend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\SinhVien;

/**
 * SinhVienSearch represents the model behind the search form of `backend\models\SinhVien`.
 */
class SinhVienSearch extends SinhVien
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'lop_hanh_chinh', 'gioi_tinh', 'tg_nhap_hoc', 'created_at', 'updated_at'], 'integer'],
            [['ten', 'email', 'que_quan', 'cmnd'], 'safe'],
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
        $query = SinhVien::find();

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
            'lop_hanh_chinh' => $this->lop_hanh_chinh,
            'gioi_tinh' => $this->gioi_tinh,
            'tg_nhap_hoc' => $this->tg_nhap_hoc,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'ten', $this->ten])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'que_quan', $this->que_quan])
            ->andFilterWhere(['like', 'cmnd', $this->cmnd]);

        return $dataProvider;
    }
}
