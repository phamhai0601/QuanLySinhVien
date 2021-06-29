<?php

namespace frontend\assets;

use yidas\adminlte\AdminlteAsset;
use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AdminlteAsset
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
	    'css/custom.css',
    ];
    public $js = [
	    'js/custom.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
	    'yidas\adminlte\AdminlteAsset'
    ];
}
