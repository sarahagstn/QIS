<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => 'My Company',
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => [
            ['label' => 'Home', 'url' => ['/site/index']],
			
			  			Yii::$app->user->isGuest ?
                ['label' => 'Aspek', 'url' => ['/site/login']] :
                [
                    'label' => 'Aspek',
                    'url' => ['/aspek'],
					'linkOptions' => ['data-method' => 'post']


                ],
			
			         
				
				
				
			Yii::$app->user->isGuest ?
                ['label' => 'Indikator', 'url' => ['/site/login']] :
                [
                    'label' => 'Indikator',
                    'url' => ['/indikator'],
					'linkOptions' => ['data-method' => 'post']


                ],
			Yii::$app->user->isGuest ?
                ['label' => 'Parameter', 'url' => ['/site/login']] :
                [
                    'label' => 'Parameter',
                    'url' => ['/parameter'],
					'linkOptions' => ['data-method' => 'post']


                ],
			['label' => 'Laporan', 'url' => ['/laporan']],
             Yii::$app->user->isGuest ?
                ['label' => 'About', 'url' => ['/site/login']] :
                [
                    'label' => 'About',
                    'url' => ['/site/about'],
					'linkOptions' => ['data-method' => 'post']


                ],
            ['label' => 'Contact', 'url' => ['/site/contact']],
            Yii::$app->user->isGuest ?
                ['label' => 'Login', 'url' => ['/site/login']] :
                [
                    'label' => 'Logout (' . Yii::$app->user->identity->username . ')',
                    'url' => ['/site/logout'],
                    'linkOptions' => ['data-method' => 'post']
                ],
        ],
    ]);
    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; My Company <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
