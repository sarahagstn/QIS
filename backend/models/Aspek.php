<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "aspek".
 *
 * @property integer $id_aspek
 * @property string $aspek
 *
 * @property Indikator[] $indikators
 */
class Aspek extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'aspek';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['aspek'], 'required'],
            [['aspek'], 'string']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_aspek' => 'Id Aspek',
            'aspek' => 'Aspek',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIndikators()
    {
        return $this->hasMany(Indikator::className(), ['id_aspek' => 'id_aspek']);
    }
}
