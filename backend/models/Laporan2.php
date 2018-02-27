<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "laporan".
 *
 * @property integer $id_laporan
 * @property string $nilai
 * @property integer $id_indikator
 * @property integer $id_parameter
 * @property string $tahun
 *
 * @property Assessment $idIndikator
 * @property Parameter $idParameter
 */
class Laporan2 extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'laporan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nilai'], 'number'],
            [['id_indikator', 'id_parameter'], 'integer'],
            [['tahun'], 'safe'],
            [['id_indikator'], 'exist', 'skipOnError' => true, 'targetClass' => Assessment::className(), 'targetAttribute' => ['id_indikator' => 'id_indikator']],
            [['id_parameter'], 'exist', 'skipOnError' => true, 'targetClass' => Parameter::className(), 'targetAttribute' => ['id_parameter' => 'id_parameter']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_laporan' => 'Id Laporan',
            'nilai' => 'Nilai',
            'id_indikator' => 'Id Indikator',
            'id_parameter' => 'Id Parameter',
            'tahun' => 'Tahun',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdIndikator()
    {
        return $this->hasOne(Assessment::className(), ['id_indikator' => 'id_indikator']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdParameter()
    {
        return $this->hasOne(Parameter::className(), ['id_parameter' => 'id_parameter']);
    }
}
