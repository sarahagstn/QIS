<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Assessment;

/**
 * AssessmentSearch represents the model behind the search form about `app\models\Assessment`.
 */
class AssessmentSearch extends Assessment
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_assessment', 'id_indikator', 'nilai'], 'integer'],
            [['tanggal'], 'safe'],
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
        $query = Assessment::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id_assessment' => $this->id_assessment,
            'id_indikator' => $this->id_indikator,
            'nilai' => $this->nilai,
            'tanggal' => $this->tanggal,
        ]);

        return $dataProvider;
    }
}
