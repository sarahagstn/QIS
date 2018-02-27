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

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('<i class="fa glyphicon glyphicon-hand-up"></i> Print Laporan', ['samplepdf'], [
    'class'=>'btn btn-danger', 
    'target'=>'_blank', 
    'data-toggle'=>'tooltip', 
    'title'=>'Will open the generated PDF file in a new window'
]);
 ?>
<?php
foreach ($laporan as $lprn) {
echo $lprn->id_assessment."<br /> ".$lprn->id_parameter;
}
?>
<?php
foreach ($usersCount as $usercnt) {
echo $usercnt['user_id']['0'];
}
?>   	      

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
		
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_assessment',
            'id_indikator',
            'nilai',
            'tanggal',
			'id_parameter',

            
        ],
    ]); ?>

</div>
