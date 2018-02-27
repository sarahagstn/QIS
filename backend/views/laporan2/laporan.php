<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\LaporanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Laporans';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="laporan-index">

    <h1>Laporan Perbaikan Good Corporate Governance</h1>
   

  
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
