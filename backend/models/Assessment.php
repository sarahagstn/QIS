<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "assessment".
 *
 * @property integer $id_assessment
 * @property integer $id_indikator
 * @property string $nilai
 * @property integer $id_parameter
 * @property integer $user_id
 * @property string $tanggal
 *
 * @property Indikator $idIndikator
 * @property Parameter $idParameter
 * @property Users $user
 */
class Assessment extends \yii\db\ActiveRecord
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
            [['id_indikator', 'nilai', 'user_id', 'tanggal'], 'required'],
            [['id_indikator', 'id_parameter', 'user_id'], 'integer'],
            [['nilai'], 'number'],
            [['tanggal'], 'safe'],
            [['id_indikator'], 'exist', 'skipOnError' => true, 'targetClass' => Indikator::className(), 'targetAttribute' => ['id_indikator' => 'id_indikator']],
            [['id_parameter'], 'exist', 'skipOnError' => true, 'targetClass' => Parameter::className(), 'targetAttribute' => ['id_parameter' => 'id_parameter']],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => Users::className(), 'targetAttribute' => ['user_id' => 'user_id']],
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
            'id_parameter' => 'Id Parameter',
            'user_id' => 'User ID',
            'tanggal' => 'Tahun',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdIndikator()
    {
        return $this->hasOne(Indikator::className(), ['id_indikator' => 'id_indikator']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdParameter()
    {
        return $this->hasOne(Parameter::className(), ['id_parameter' => 'id_parameter']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(Users::className(), ['user_id' => 'user_id']);
    }
}
