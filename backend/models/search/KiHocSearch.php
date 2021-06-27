<?php

namespace backend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\KiHoc;

/**
 * KiHocSearch represents the model behind the search form of `backend\models\KiHoc`.
 */
class KiHocSearch extends KiHoc
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'tg_bat_dau', 'tg_ket_thuc', 'created_at'], 'integer'],
            [['ma_ki_hoc'], 'safe'],
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
        $query = KiHoc::find();

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
            'tg_bat_dau' => $this->tg_bat_dau,
            'tg_ket_thuc' => $this->tg_ket_thuc,
            'created_at' => $this->created_at,
        ]);

        $query->andFilterWhere(['like', 'ma_ki_hoc', $this->ma_ki_hoc]);

        return $dataProvider;
    }
}
