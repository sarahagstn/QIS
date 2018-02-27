<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Indikator;
use yii\helpers\ArrayHelper;
use yii\grid\GridView;
use unclead\multipleinput\MultipleInput;
/* @var $this yii\web\View */
/* @var $model app\models\Assessment */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="assessment-form">

 <?= GridView::widget([
        'dataProvider' => $dataProvider,

        'columns' => [
          

            'id_indikator',

            'nm_indikator',

 

         ],

      
    ]); ?>
    <?php $form = ActiveForm::begin(); ?>
    <table>
        <tr><th>Name</th><th>Nilai</th></tr>
	<?php
	$id_pic = Yii::$app->user->identity->id_pic;
$abc=ArrayHelper::getColumn(Indikator::find()->where('id_pic =:id_pic')->addParams([':id_pic' => $id_pic])->all(),'id_indikator','nm_indikator');
?>

        <?php foreach($indktr as $i=>$model):
		?>
		
		
            <tr>
			
                <td><?= $form->field($model,"[$i]id_indikator")->textInput(['disable'=>true, 'value'=>$abc[$i] ])->label(false); ?></td>
		

            
		
				
			
			
				
			
				
               <td> <?= $form->field($model,"[$i]nilai")->radioList(array('0'=>'Tidak ada','0.25'=>'Memenuhi sebagian kecil','0.5'=>'Memenuhi sebagian','0.75'=>'Memenuhi sebagian besar','1'=>'Memenuhi seluruh'))->label(false) ;
	  ?> </td>
               
	   <td><?= $form->field($model,"[$i]user_id")->hiddenInput(['value' => Yii::$app->user->identity->id])->label(false); ?></td>
	    <td><?= $form->field($model,"[$i]tanggal")->hiddenInput(['value' => date("Y")]); ?></td>
              
            </tr>
			        
			 <?php endforeach; ?>

		
    </table>
	
    <div class="form-group">
	
        <?= Html::submitButton('Create', ['class' => 'btn btn-success']) ?>
    </div>
    <?php ActiveForm::end(); ?>

</div>
