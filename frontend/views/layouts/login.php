<?php
use backend\assets\AppAsset;
use yii\helpers\Html;
/* @var $this \yii\web\View */
/* @var $content string */

AppAsset::register($this);
// You could register AppAsset depended with AdminlteAsset instead
yidas\adminlte\AdminlteAsset::register($this);
// iCheck
yidas\adminlte\plugins\iCheckAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body class="hold-transition login-page">

<?php $this->beginBody() ?>

    <?= $content ?>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
