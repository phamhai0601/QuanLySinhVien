<?php
return [
	'timeZone' => 'Asia/Ho_Chi_Minh',
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'assetManager' => [
	        'bundles' => [
		        'yidas\adminlte\AdminlteAsset' => [
			        'skin' => 'skin-blue',
		        ],
	        ],
        ],
        'view' => [
//	        'theme' => [
//		        'pathMap' => [
//			        '@backend/views' => '@vendor/yidas/yii2-adminlte/templates/simple'
//		        ],
//	        ],
        ],
    ],
    'modules' => [
	    'user' => [
		    'class' => 'dektrium\user\Module',
		    'enableConfirmation'=>false,
	    ],
	    'gridview' =>  [
		    'class' => '\kartik\grid\Module'
	    ]
    ],
];
