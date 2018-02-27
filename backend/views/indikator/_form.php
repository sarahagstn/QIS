<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use app\models\Pic;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Indikator */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="indikator-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nm_indikator')->textInput(['maxlength' => true]) ?>

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
