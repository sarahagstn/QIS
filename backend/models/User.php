<?php

namespace app\models;

use Yii;
use yii\base\Security;

/**
 * This is the model class for table "user".
 *
 * @property integer $id
 * @property string $username
 * @property string $auth_key
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $email
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $s_assess
 * @property integer $id_pic
 *
 * @property Assessment[] $assessments
 * @property Pic $idPic
 */
class User extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'auth_key', 'password_hash', 'email', 'created_at', 'updated_at'], 'required'],
            [['status', 'created_at', 'updated_at', 's_assess', 'id_pic'], 'integer'],
            [['username', 'auth_key'], 'string', 'max' => 32],
            [['password_hash', 'password_reset_token', 'email'], 'string', 'max' => 255],
            [['id_pic'], 'exist', 'skipOnError' => true, 'targetClass' => Pic::className(), 'targetAttribute' => ['id_pic' => 'id_pic']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'username' => 'Username',
            'auth_key' => 'Auth Key',
            'password_hash' => 'Password',
            'password_reset_token' => 'Password Reset Token',
            'email' => 'Email',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            's_assess' => 'S Assess',
            'id_pic' => 'Unit',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAssessments()
    {
        return $this->hasMany(Assessment::className(), ['user_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIdPic()
    {
        return $this->hasOne(Pic::className(), ['id_pic' => 'id_pic']);
    }
	public function beforeSave($insert) {
    if(isset($this->password_hash)) 
        $this->password_hash = Yii::$app->security->generatePasswordHash($this->password_hash);
    return parent::beforeSave($insert);
}
}
