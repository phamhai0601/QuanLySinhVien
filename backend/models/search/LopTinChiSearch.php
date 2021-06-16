<?php

namespace backend\models\search;

use backend\models\LopTinChi;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\traits\DateRangeTrait;

/**
 * LopTinChiSearch represents the model behind the search form of `common\models\LopTinChi`.
 */
class LopTinChiSearch extends LopTinChi
{
	use DateRangeTrait;
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
	        [
		        [
			        'id',
			        'ma_giang_vien',
			        'ma_ki_hoc',
			        'ma_phong_hoc',
			        'sv_toi_da',
			        'sv_toi_thieu',
		        ],
		        'integer',
	        ],
	        [
		        [
			        'ten_lop',
			        'ma_mon_hoc',
			        'created_at',
		        ],
		        'safe',
	        ],
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
    public function search($params) {
	    $query = LopTinChi::find();
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
		    'id'            => $this->id,
		    'ma_giang_vien' => $this->ma_giang_vien,
		    'ma_ki_hoc'     => $this->ma_ki_hoc,
		    'ma_phong_hoc'  => $this->ma_phong_hoc,
		    'sv_toi_thieu'  => $this->sv_toi_thieu,
		    'sv_toi_da'     => $this->sv_toi_da,
		    'created_at'    => $this->created_at,
	    ]);
	    $query->andFilterWhere([
		    'like',
		    'ten_lop',
		    $this->ten_lop,
	    ]);
	    $query->andFilterWhere([
		    'like',
		    'ma_mon_hoc',
		    $this->ma_mon_hoc,
	    ]);
	    $this->queryFilterDateRange($query);
	    return $dataProvider;
    }
}
