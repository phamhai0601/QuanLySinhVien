<?php

namespace backend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\MonHoc;

/**
 * MonHocSearch represents the model behind the search form of `backend\models\MonHoc`.
 */
class MonHocSearch extends MonHoc
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'ma_bo_mon', 'tin_chi', 'dieu_kien', 'created_at'], 'integer'],
            [['ten_mon_hoc'], 'safe'],
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
        $query = MonHoc::find();

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
            'ma_bo_mon' => $this->ma_bo_mon,
            'tin_chi' => $this->tin_chi,
            'dieu_kien' => $this->dieu_kien,
            'created_at' => $this->created_at,
        ]);

        $query->andFilterWhere(['like', 'ten_mon_hoc', $this->ten_mon_hoc]);

        return $dataProvider;
    }
}
