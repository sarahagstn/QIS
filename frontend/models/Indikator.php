<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "indikator".
 *
 * @property integer $id_indikator
 * @property string $nm_indikator
 * @property integer $user_id
 *
 * @property Users $user
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
            [['nm_indikator', 'user_id'], 'required'],
            [['user_id'], 'integer'],
            [['nm_indikator'], 'string', 'max' => 500]
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
            'user_id' => 'User ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(Users::className(), ['user_id' => 'user_id']);
    }
}
