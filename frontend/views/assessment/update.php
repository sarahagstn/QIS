<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Assessment */

$this->title = 'Update Assessment: ' . $model->id_assessment;
$this->params['breadcrumbs'][] = ['label' => 'Assessments', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_assessment, 'url' => ['view', 'id' => $model->id_assessment]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="assessment-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
