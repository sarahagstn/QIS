<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Aspek */

$this->title = 'Update Aspek: ' . ' ' . $model->id_aspek;
$this->params['breadcrumbs'][] = ['label' => 'Aspeks', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_aspek, 'url' => ['view', 'id' => $model->id_aspek]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="aspek-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
