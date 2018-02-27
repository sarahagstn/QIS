<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Assessment */

$this->title = 'Create Assessment';
$this->params['breadcrumbs'][] = ['label' => 'Assessments', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="assessment-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        
		'indktr' => $indktr,
		'dataProvider' => $dataProvider,
		
		
    ]) ?>

</div>
