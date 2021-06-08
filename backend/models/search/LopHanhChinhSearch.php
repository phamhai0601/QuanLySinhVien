<?php

namespace backend\models\search;

use kartik\daterange\DateRangeBehavior;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\LopHanhChinh;

/**
 * LopHanhChinhSearch represents the model behind the search form of `backend\models\LopHanhChinh`.
 */
class LopHanhChinhSearch extends LopHanhChinh
{

	public $createTimeStart;

	public $createTimeEnd;

	public function behaviors() {
		return [
			[
				'class'              => DateRangeBehavior::class,
				'attribute'          => 'created_at',
				'dateStartAttribute' => 'createTimeStart',
				'dateEndAttribute'   => 'createTimeEnd',
			],
		];
	}
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'ma_giang_vien', 'khoa_hoc'], 'integer'],
            [['ma_lop','created_at'], 'safe'],
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
        $query = LopHanhChinh::find();

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
            'ma_giang_vien' => $this->ma_giang_vien,
            'khoa_hoc' => $this->khoa_hoc,
        ]);
	    $query->andFilterWhere([
		    '>=',
		    'created_at',
		    $this->createTimeStart,
	    ])->andFilterWhere([
		    '<',
		    'created_at',
		    $this->createTimeEnd,
	    ]);

        $query->andFilterWhere(['like', 'ma_lop', $this->ma_lop]);

        return $dataProvider;
    }
}
