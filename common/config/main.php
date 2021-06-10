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
