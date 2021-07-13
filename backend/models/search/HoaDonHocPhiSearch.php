<?php

namespace backend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\HoaDonHocPhi;

/**
 * HoaDonHocPhiSearch represents the model behind the search form of `backend\models\HoaDonHocPhi`.
 */
class HoaDonHocPhiSearch extends HoaDonHocPhi
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'ngay_db_nop', 'ngay_kt_nop', 'trang_thai', 'user_id', 'tong_tien', 'created_at'], 'integer'],
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
        $query = HoaDonHocPhi::find();

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
            'ngay_db_nop' => $this->ngay_db_nop,
            'ngay_kt_nop' => $this->ngay_kt_nop,
            'trang_thai' => $this->trang_thai,
            'user_id' => $this->user_id,
            'tong_tien' => $this->tong_tien,
            'created_at' => $this->created_at,
        ]);

        return $dataProvider;
    }
}
