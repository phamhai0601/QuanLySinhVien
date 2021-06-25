<?php

use yii\widgets\Menu;

?>
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
	      <img src="data:image/jpeg;base64,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" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p><?=$this->user->username?></p>
        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
      </div>
    </div>
    <!-- search form -->
    <form action="#" method="get" class="sidebar-form">
      <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Search...">
        <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                <i class="fa fa-search"></i>
              </button>
            </span>
      </div>
    </form>
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
	  <?php
	  echo Menu::widget([
		  'options' => [
			  'class' => 'sidebar-menu tree',
			  'data-widget'=>'tree',
		  ],
		  'activateParents'=>true,
		  'items' => [

			  // Important: you need to specify url as 'controller/action',
			  // not just as 'controller' even if default action is used.
			  [
				  "label"   => "MAIN NAVIGATION",
				  'options' => ['class' => 'header'],
			  ],
			  [
				  'label' => 'Dashboard',
				  'url'   => ['site/index'],
				  'template' => '<a href="{url}"><i class="fa fa-dashboard"></i><span>{label}</span></a>',
			  ],
			  [
				  'label' => 'Lịch học',
				  'url'   => ['lich-hoc/index'],
				  'template' => '<a href="{url}"><i class="fa fa-user-o" aria-hidden="true"></i><span>{label}</span></a>',
			  ],
			  // 'Products' menu item will be selected as long as the route is 'product/index'
			  [
				  'options' => ['class' => 'treeview'],
				  'label' => 'Cá nhân',
				  'url'   => ['product/index'],
				  'submenuTemplate'=>'<ul class="treeview-menu">{items}</ul>',
				  'template' => '<a href="{url}"><i class="fa fa-home" aria-hidden="true"></i><span>{label}</span><i class="fa fa-angle-left right"></i></a>',
				  'items' => [
					  [
						  'label' => 'Kết quả học tập',
						  'url'   => [
							  'lop-hanh-chinh/index',
						  ],
						  'template'=>'<a href="{url}"><i class="fa fa-circle-o"></i> {label}</a>',
					  ],
					  [
						  'label' => 'Đăng kí chuyên ngành',
						  'url'   => [
							  'lop-tin-chi/index',
						  ],
						  'template'=>'<a href="{url}"><i class="fa fa-circle-o"></i> {label}</a>',
					  ],
					  [
						  'label' => 'Đăng kí lớp tín chỉ',
						  'url'   => [
							  'dang-ki-lop-tin-chi/index',
						  ],
						  'template'=>'<a href="{url}"><i class="fa fa-circle-o"></i> {label}</a>',
					  ],
					  [
						  'label' => 'Hóa đơn học phí',
						  'url'   => [
							  'lop-tin-chi/index',
							  'tag' => 'popular',
						  ],
						  'template'=>'<a href="{url}"><i class="fa fa-circle-o"></i> {label}</a>',
					  ],
					  [
						  'label' => 'Đổi mật khẩu',
						  'url'   => [
							  'lop-tin-chi/index',
							  'tag' => 'popular',
						  ],
						  'template'=>'<a href="{url}"><i class="fa fa-circle-o"></i> {label}</a>',
					  ],
					  [
						  'label' => 'Đăng xuất',
						  'url'   => [
							  'lop-tin-chi/index',
							  'tag' => 'popular',
						  ],
						  'template'=>'<a href="{url}"><i class="fa fa-circle-o"></i> {label}</a>',
					  ],
				  ],
			  ],
			  [
				  'label' => 'Lịch thi',
				  'url'   => ['giang-vien/index'],
				  'template' => '<a href="{url}"><i class="fa fa-user-o"></i><span>{label}</span></a>',
			  ],
			  [
				  'options' => ['class' => 'treeview'],
				  'label' => 'Dịch vụ',
				  'url'   => ['product/index'],
				  'submenuTemplate'=>'<ul class="treeview-menu">{items}</ul>',
				  'template' => '<a href="{url}"><i class="fa fa-home" aria-hidden="true"></i><span>{label}</span><i class="fa fa-angle-left right"></i></a>',
				  'items' => [
					  [
						  'label' => 'Nạp mã dịch vụ',
						  'url'   => [
							  'lop-hanh-chinh/index',
						  ],
						  'template'=>'<a href="{url}"><i class="fa fa-circle-o"></i> {label}</a>',
					  ],
					  [
						  'label' => 'Đăng kí dịch vụ',
						  'url'   => [
							  'lop-hanh-chinh/index',
						  ],
						  'template'=>'<a href="{url}"><i class="fa fa-circle-o"></i> {label}</a>',
					  ],
				  ],
			  ],
			  [
				  'label' => 'Chương trình đào tạo',
				  'url'   => ['giang-vien/index'],
				  'template' => '<a href="{url}"><i class="fa fa-user-o"></i><span>{label}</span></a>',
			  ],
		  ],
	  ]);
	  ?>
  </section>
  <!-- /.sidebar -->
</aside>