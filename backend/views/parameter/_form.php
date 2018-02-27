<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Indikator;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $model app\models\Parameter */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="parameter-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'parameter')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'id_indikator')->dropDownList(
   ArrayHelper::map(Indikator::find()->all(),'id_indikator',
            'nm_indikator'),
            

            ['class' => 'form-control inline-block']
			);?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
