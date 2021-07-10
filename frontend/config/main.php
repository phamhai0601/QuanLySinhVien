<?php

use dektrium\user\Module;
use frontend\controllers\user\SecurityController;
use frontend\models\form\LoginForm;

$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
	'id'                  => 'app-frontend',
	'basePath'            => dirname(__DIR__),
	'bootstrap'           => ['log'],
	'controllerNamespace' => 'frontend\controllers',
	'components'          => [
		'reCaptcha'    => [
			'class'     => 'himiklab\yii2\recaptcha\ReCaptchaConfig',
			'siteKeyV2' => '6Le9SYEbAAAAAGVBYj3RBPl1p1Zy8pwAIDgNuDBa',
			'secretV2'  => '6Le9SYEbAAAAANyUwk-OJ7CPyz1G5zl5MmbMepEy',
		],
		'OPGateway'    => [
			'class'         => 'yiiviet\payment\onepay\PaymentGateway',
			'international' => false,
			//Thiết lập `FALSE` để sử dụng cổng nội địa và ngược lại là cổng quốc tế. Mặc định là `FALSE`.
			'sandbox'       => true,
		],
		'request'      => [
			'csrfParam' => '_csrf-frontend',
		],
		'user'         => [
			'identityClass'   => 'common\models\User',
			'enableAutoLogin' => true,
			'identityCookie'  => [
				'name'     => '_identity-frontend',
				'httpOnly' => true,
			],
		],
		'session'      => [
			// this is the name of the session cookie used for login on the frontend
			'name' => 'advanced-frontend',
		],
		'log'          => [
			'traceLevel' => YII_DEBUG ? 3 : 0,
			'targets'    => [
				[
					'class'  => 'yii\log\FileTarget',
					'levels' => [
						'error',
						'warning',
					],
				],
			],
		],
		'errorHandler' => [
			'errorAction' => 'site/error',
		],
		'view'         => [
			'class' => 'frontend\component\View',
			'theme' => [
				'pathMap' => [
					'@dektrium/user/views' => '@frontend/views/user',
				],
			],
		],
		'assetManager' => [
			'bundles' => [
				'yidas\adminlte\AdminlteAsset' => [
					'skin' => 'skin-blue',
				],
			],
		],
		'urlManager'   => [
			'enablePrettyUrl' => true,
			'showScriptName'  => false,
			'suffix'          => '.html',
			'rules'           => [],
		],
	],
	'modules'             => [
		'user' => [
			'class'         => Module::class,
			'controllerMap' => [
				'security' => SecurityController::class,
			],
			'modelMap'      => [
				'LoginForm' => LoginForm::class,
			],
		],
	],
	'params'              => $params,
];
