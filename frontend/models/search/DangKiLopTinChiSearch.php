<?php

namespace frontend\models\search;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\DangKiLopTinChi;

/**
 * DangKiLopTinChiSearch represents the model behind the search form of `frontend\models\DangKiLopTinChi`.
 */
class DangKiLopTinChiSearch extends DangKiLopTinChi
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'tg_bat_dau', 'tg_ket_thuc', 'tinh_trang', 'created_at'], 'integer'],
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
        $query = DangKiLopTinChi::find()->innerJoin(['lop_tin_chi','lop_tin_chi.ten_lop = dang_ki_lop_tin_chi.ma_lop_tin_chi'])->where(['lop_tin_chi.ma_ki_hoc'=>$this->kiHoc->id]);

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
            'tinh_trang' => $this->tinh_trang,
            'created_at' => $this->created_at,
        ]);

        $query->andFilterWhere(['like', 'ma_lop_tin_chi', $this->ma_lop_tin_chi]);

        return $dataProvider;
    }
}
