<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "parameter".
 *
 * @property integer $id_parameter
 * @property string $parameter
 * @property integer $id_indikator
 *
 * @property Indikator $idIndikator
 */
class Parameter extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'parameter';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['parameter', 'id_indikator'], 'required'],
            [['parameter'], 'string'],
            [['id_indikator'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_parameter' => 'Id Parameter',
            'parameter' => 'Parameter',
            'id_indikator' => 'Id Indikator',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdIndikator()
    {
        return $this->hasOne(Indikator::className(), ['id_indikator' => 'id_indikator']);
    }
}
