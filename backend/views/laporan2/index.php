<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Laporan2s';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="laporan2-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php
foreach ($dataProvider2 as $total) {
echo "Jumlah user yang telah melakukan assessment adalah ". $total->id. " user" ;
}
?>  <?php
foreach ($dataProvider3 as $ttl) {
echo "dari total ".$ttl->status. " user";
}
?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,

        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_laporan',
[
        	'attribute' => 'id_parameter',
        	
			'header' => 'Jumlah Perbaikan'
        ],
            'tahun',

 

            ['class' => 'yii\grid\ActionColumn', 'template' => '{view}', 'buttons' => [
    'view' => function ($url, $model, $key) {
        return Html::a('View', ['view', 'id'=>$model->id_laporan, 'tahun'=>$model->tahun]);
    },
]],

        ],
    ]); ?>
</div>
