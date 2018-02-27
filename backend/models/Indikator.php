<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "indikator".
 *
 * @property integer $id_indikator
 * @property string $nm_indikator
 * @property integer $id_pic
 *
 * @property Assessment[] $assessments
 * @property Pic $idPic
 * @property Parameter[] $parameters
 */
class Indikator extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'indikator';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nm_indikator', 'id_pic'], 'required'],
            [['id_pic'], 'integer'],
            [['nm_indikator'], 'string', 'max' => 500],
            [['id_pic'], 'exist', 'skipOnError' => true, 'targetClass' => Pic::className(), 'targetAttribute' => ['id_pic' => 'id_pic']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_indikator' => 'Id Indikator',
            'nm_indikator' => 'Nm Indikator',
            'id_pic' => 'Id Pic',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAssessments()
    {
        return $this->hasMany(Assessment::className(), ['id_indikator' => 'id_indikator']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdPic()
    {
        return $this->hasOne(Pic::className(), ['id_pic' => 'id_pic']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getParameters()
    {
        return $this->hasMany(Parameter::className(), ['id_indikator' => 'id_indikator']);
    }
}
