<?php

namespace backend\assets;

use yii\web\AssetBundle;
use yidas\adminlte\AdminlteAsset;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AdminlteAsset
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
	    'css/custom.css',
    ];
    public $js = [
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
	    'yidas\adminlte\AdminlteAsset'

    ];

}
