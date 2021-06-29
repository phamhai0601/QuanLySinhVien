<?php

namespace frontend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\LichThi;

/**
 * LichThiSearch represents the model behind the search form of `frontend\models\LichThi`.
 */
class LichThiSearch extends LichThi
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'tg_thi', 'ma_phong', 'ma_giang_vien', 'created_at'], 'integer'],
            [['ma_lop_tin_chi'], 'safe'],
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
        $query = LichThi::find();

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
            'tg_thi' => $this->tg_thi,
            'ma_phong' => $this->ma_phong,
            'ma_giang_vien' => $this->ma_giang_vien,
            'created_at' => $this->created_at,
        ]);

        $query->andFilterWhere(['like', 'ma_lop_tin_chi', $this->ma_lop_tin_chi]);

        return $dataProvider;
    }
}
