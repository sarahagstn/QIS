<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Laporan2 */

$this->title = 'Create Laporan2';
$this->params['breadcrumbs'][] = ['label' => 'Laporan2s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="laporan2-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
