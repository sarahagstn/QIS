<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "assessment".
 *
 * @property integer $id_assessment
 * @property integer $id_indikator
 * @property string $nilai
 * @property string $tanggal
 * 
 * @property Indikator $idIndikator
 */
class Laporan extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'assessment';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_indikator', 'nilai'], 'required'],
            [['id_indikator'], 'integer'],
            [['nilai'], 'number'],
			
            [['tanggal'], 'safe'],
			
			[['id_parameter'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_assessment' => 'Id Assessment',
            'id_indikator' => 'Id Indikator',
            'nilai' => 'Nilai',
            'tanggal' => 'Tanggal',
			'id_parameter' => 'Perbaikan',
			
        ];
    }
public function search($params) {
    $query = Laporan::find();
    $dataProvider = new ActiveDataProvider([
        'query' => $query,
    ]);
 
    /**
     * Setup your sorting attributes
     * Note: This is setup before the $this->load($params) 
     * statement below
     */
     $dataProvider->setSort([
        'attributes' => [
'id_assessment',
            'id_indikator',
            'nilai',
            'tanggal',
			'id_parameter',
            ]
        ]
    );

 

    $this->addCondition($query, 'id_parameter', true);

 
    /* Add your filtering criteria */
 
    // filter by person full name
    $query->andWhere('id_parameter is NOT NULL'
    );
 
    // filter by country name
   
 
    return $dataProvider;
}
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdIndikator()
    {
        return $this->hasOne(Indikator::className(), ['id_indikator' => 'id_indikator']);
    }
	public function getUserId()
    {
        return $this->hasOne(Users::className(), ['user_id' => 'user_id']);
    }
	public function getIdParameter()
    {
        return $this->hasOne(Parameter::className(), ['id_parameter' => 'id_parameter']);
    }
}
