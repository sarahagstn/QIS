<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $model app\models\Laporan2 */

$this->title = $model->id_laporan;
$this->params['breadcrumbs'][] = ['label' => 'Laporan2s', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="laporan2-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Print', ['update', 'tahun' => $model->tahun],['target'=>'_blank'],  ['class' => 'btn btn-primary']) ?>

    </p>

   <?= GridView::widget([
        'dataProvider' => $dataProvider,
       
        'columns' => [
            
 ['class' => 'yii\grid\SerialColumn'],
           
			 [
        	'attribute' => 'id_parameter',
        	'value' => 'idParameter.parameter',
			'header' => 'Perbaikan'
        ],

            
        ],
    ]); ?>

</div>
