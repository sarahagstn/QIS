<?php

namespace common\modules\auth\models;

use Yii;

/**
 * This is the model class for table "pic".
 *
 * @property integer $id_pic
 * @property string $pic
 *
 * @property Indikator[] $indikators
 */
class Pic extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pic';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['pic'], 'required'],
            [['pic'], 'string', 'max' => 10],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_pic' => 'Id Pic',
            'pic' => 'Pic',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIndikators()
    {
        return $this->hasMany(Indikator::className(), ['id_pic' => 'id_pic']);
    }
}
