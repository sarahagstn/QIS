<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Pic;
/* @var $this yii\web\View */
/* @var $model app\models\User */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'auth_key')->hiddenInput(['value' => Yii::$app->security->generateRandomString()])->label(false); ?>

    <?= $form->field($model, 'password_hash')->textInput(['maxlength' => true]) ?>

  

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>
	

  <?= $form->field($model, 'created_at')->hiddenInput(['value' => time(), 'on'=>'create'])->label(false); ?>

  <?= $form->field($model, 'updated_at')->hiddenInput(['value' => time(), 'on'=>'update'])->label(false); ?>


 

<?= $form->field($model, 'id_pic')->dropDownList(
   ArrayHelper::map(Pic::find()->all(),'id_pic',
            'pic'),
            

            ['class' => 'form-control inline-block']
			);?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

    

