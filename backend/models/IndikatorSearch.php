<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Indikator;

/**
 * IndikatorSearch represents the model behind the search form about `app\models\Indikator`.
 */
class IndikatorSearch extends Indikator
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_indikator', 'id_pic'], 'integer'],
            [['nm_indikator'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
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
        $query = Indikator::find();

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
            'id_indikator' => $this->id_indikator,
            'id_pic' => $this->id_pic,
        ]);

        $query->andFilterWhere(['like', 'nm_indikator', $this->nm_indikator]);

        return $dataProvider;
    }
}
