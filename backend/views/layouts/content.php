<?php
use yii\widgets\Breadcrumbs;
?>
<div class="content-wrapper">
<section class="content-header">
<h1>
<?= $this->title ?>
</h1>
<?= Breadcrumbs::widget([
'links' => isset($this->params['breadcums']) ?  $this->params['breadcums'] : [],
]) ?>
</section>

<section class="content">
<? $content ?>
</section>
</div>