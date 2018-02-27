<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Pic */

$this->title = 'Update Pic: ' . $model->id_pic;
$this->params['breadcrumbs'][] = ['label' => 'Pics', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_pic, 'url' => ['view', 'id' => $model->id_pic]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="pic-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
