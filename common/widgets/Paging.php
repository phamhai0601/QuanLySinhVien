<?php
/**
 * Created by FesVPN.
 * @project QuanLySinhVien-CTMS
 * @author  Pham Hai
 * @email   mitto.hai.7356@gmail.com
 * @date    4/6/2021
 * @time    8:56 AM
 */

namespace common\widgets;
use yii\bootstrap\Widget;
use yii\helpers\Html;
use yii\helpers\Url;

class Paging extends Widget {
	public $buttons          = [];

	public $current_pagesize = 20;

	public $list_pagesize    = [
		20,
		50,
		100,
		150,
		200,
		500,
		1000,
	];

	/**
	 * @return string
	 */
	public function run(): string {
		$a = '';
		foreach ($this->buttons as $button) {
			$a .= Html::a($button['text'], $button['url'], $button['options']);
		}
		$ul = '<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">';
		foreach ($this->list_pagesize as $item) {
			$ul .= '<li role="presentation"><a role="menuitem" tabindex="-1" href="' . Url::current(['pagesize' => $item]) . '">' . $item . '</a></li>';
		}
		$ul .= '</ul>';
		return Html::tag('div', $a . Html::button('Display per page: <b>' . $this->current_pagesize . '</b> <span class="caret"></span>', [
				'class'       => 'btn btn-default dropdown-toggle',
				'type'        => 'button',
				'id'          => 'dropdownMenu1',
				'data-toggle' => 'dropdown',
			]) . $ul, ['class' => 'pull-right dropdown']);
	}
}