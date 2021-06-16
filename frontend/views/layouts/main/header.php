<?php
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this \yii\web\View */
/* @var $content string */
?>

<header class="main-header">

  <!-- Logo -->
  <a href="index2.html" class="logo">
    <!-- mini logo for sidebar mini 50x50 pixels -->
    <span class="logo-mini"><b>L</b>MS</span>
    <!-- logo for regular state and mobile devices -->
    <span class="logo-lg"><b>LMS</b>HOU</span>
  </a>

  <!-- Header Navbar -->
  <nav class="navbar navbar-static-top">
    <!-- Sidebar toggle button-->
    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
      <span class="sr-only">Toggle navigation</span>
    </a>
    <!-- Navbar Right Menu -->
    <div class="navbar-custom-menu">
      <ul class="nav navbar-nav">
        <!-- Messages: style can be found in dropdown.less-->
        <li class="dropdown messages-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="fa fa-envelope-o"></i>
            <span class="label label-success">4</span>
          </a>
          <ul class="dropdown-menu">
            <li class="header">You have 4 messages</li>
            <li>
              <!-- inner menu: contains the actual data -->
              <ul class="menu">
                <li><!-- start message -->
                  <a href="#">
                    <div class="pull-left">
                      <img src="<?=$directoryAsset?>/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    </div>
                    <h4>
                      Support Team
                      <small><i class="fa fa-clock-o"></i> 5 mins</small>
                    </h4>
                    <p>Why not buy a new awesome theme?</p>
                  </a>
                </li>
                <!-- end message -->
                <li>
                  <a href="#">
                    <div class="pull-left">
                      <img src="<?=$directoryAsset?>/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                    </div>
                    <h4>
                      AdminLTE Design Team
                      <small><i class="fa fa-clock-o"></i> 2 hours</small>
                    </h4>
                    <p>Why not buy a new awesome theme?</p>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <div class="pull-left">
                      <img src="<?=$directoryAsset?>/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                    </div>
                    <h4>
                      Developers
                      <small><i class="fa fa-clock-o"></i> Today</small>
                    </h4>
                    <p>Why not buy a new awesome theme?</p>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <div class="pull-left">
                      <img src="<?=$directoryAsset?>/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                    </div>
                    <h4>
                      Sales Department
                      <small><i class="fa fa-clock-o"></i> Yesterday</small>
                    </h4>
                    <p>Why not buy a new awesome theme?</p>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <div class="pull-left">
                      <img src="<?=$directoryAsset?>/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                    </div>
                    <h4>
                      Reviewers
                      <small><i class="fa fa-clock-o"></i> 2 days</small>
                    </h4>
                    <p>Why not buy a new awesome theme?</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="footer"><a href="#">See All Messages</a></li>
          </ul>
        </li>
        <!-- Notifications: style can be found in dropdown.less -->
        <li class="dropdown notifications-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="fa fa-bell-o"></i>
            <span class="label label-warning">10</span>
          </a>
          <ul class="dropdown-menu">
            <li class="header">You have 10 notifications</li>
            <li>
              <!-- inner menu: contains the actual data -->
              <ul class="menu">
                <li>
                  <a href="#">
                    <i class="fa fa-users text-aqua"></i> 5 new members joined today
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                    page and may cause design problems
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa fa-users text-red"></i> 5 new members joined
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa fa-user text-red"></i> You changed your username
                  </a>
                </li>
              </ul>
            </li>
            <li class="footer"><a href="#">View all</a></li>
          </ul>
        </li>
        <!-- Tasks: style can be found in dropdown.less -->
        <li class="dropdown tasks-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="fa fa-flag-o"></i>
            <span class="label label-danger">9</span>
          </a>
          <ul class="dropdown-menu">
            <li class="header">You have 9 tasks</li>
            <li>
              <!-- inner menu: contains the actual data -->
              <ul class="menu">
                <li><!-- Task item -->
                  <a href="#">
                    <h3>
                      Design some buttons
                      <small class="pull-right">20%</small>
                    </h3>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                           aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                        <span class="sr-only">20% Complete</span>
                      </div>
                    </div>
                  </a>
                </li>
                <!-- end task item -->
                <li><!-- Task item -->
                  <a href="#">
                    <h3>
                      Create a nice theme
                      <small class="pull-right">40%</small>
                    </h3>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar"
                           aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                        <span class="sr-only">40% Complete</span>
                      </div>
                    </div>
                  </a>
                </li>
                <!-- end task item -->
                <li><!-- Task item -->
                  <a href="#">
                    <h3>
                      Some task I need to do
                      <small class="pull-right">60%</small>
                    </h3>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar"
                           aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                        <span class="sr-only">60% Complete</span>
                      </div>
                    </div>
                  </a>
                </li>
                <!-- end task item -->
                <li><!-- Task item -->
                  <a href="#">
                    <h3>
                      Make beautiful transitions
                      <small class="pull-right">80%</small>
                    </h3>
                    <div class="progress xs">
                      <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar"
                           aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                        <span class="sr-only">80% Complete</span>
                      </div>
                    </div>
                  </a>
                </li>
                <!-- end task item -->
              </ul>
            </li>
            <li class="footer">
              <a href="#">View all tasks</a>
            </li>
          </ul>
        </li>
        <!-- User Account: style can be found in dropdown.less -->
        <li class="dropdown user user-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <img src="data:image/jpeg;base64,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" class="user-image" alt="User Image">
            <span class="hidden-xs"><?=$this->user->email?></span>
          </a>
          <ul class="dropdown-menu">
            <!-- User image -->
            <li class="user-header">
              <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAMDAwMDAwQEBAQFBQUFBQcHBgYHBwsICQgJCAsRCwwLCwwLEQ8SDw4PEg8bFRMTFRsfGhkaHyYiIiYwLTA+PlQBAwMDAwMDBAQEBAUFBQUFBwcGBgcHCwgJCAkICxELDAsLDAsRDxIPDg8SDxsVExMVGx8aGRofJiIiJjAtMD4+VP/CABEIAKAAoAMBIgACEQEDEQH/xAAdAAEAAgIDAQEAAAAAAAAAAAAABwgCBgEDBAUJ/9oACAEBAAAAAP1TAAAAGHl49eYADGGIQ09tc1TjkAHXVCKgSVbfvAMIDrsAnuxWYDz0P+eA9V7/AHgI/puALeSYAi6pAAtRMADRqYAC38kgOiifygH0L2ewBhC9YgFip7zAOK0QeCX7T5AGHPEXwfp7a5ulfnjMBEMC2UkEM9XqzNUyAwhOsxKEtbr16jFsU9S2MqZjRqa9QAPfdv7xhTnQAAEwWlzR7TkAAXh2fCrUPgACarN80O+UAAPoXx//xAAUAQEAAAAAAAAAAAAAAAAAAAAA/9oACAECEAAAAAAAAAAAAAAAAAAAAA//xAAUAQEAAAAAAAAAAAAAAAAAAAAA/9oACAEDEAAAAAAAAAAAAAAAAAAAAA//xABEEAABAwEEBQYHDQkAAAAAAAADAgQFBgAHEhMBIzAzQxAUFSIyUxEgJEBy0+MWITE2QlJhYmNzg5OjJUR0dZKxs8Pw/9oACAEBAAE/APPTPGrffnGP012FIMXOjUuwL9FfmCyDGLGTqItVl78bFKI3iEofG7zho9ZaWr2r5hZNBpI6Bk4YdWPlia5quHwc1lT4EcNZMwdqXvkYvNIm80AbVffo3fs7IciMEahLxoX8tG0IQQBrWRehCEfCu14d5DmpTkZR61jjB/r+PQN4j6lzjaulrPGE4fcfdWaPhOwDOBYyAILGNaNnfFV5BoFAMl++vrvMH+PY3N1hln9z7omrJrGfqtk6chYtjuj9gAsa7S0oWYlHj4/bcFzNiweOY963dhJgOAuYO0W7FJxjN+PsuAiXo2N5r9cdRkotGjWFyg6PozybO6N4l5RAEE+EBSj2N8nxMJ/Fi2dy3xVL/MDf2RsbyY5UhRMmge8GPSf8jZ3VsCMqKZ40dc5Sn2JwAcAIBaMaCdQlp2HJBzbyOXwC5exiY9zMSLNiHfHLljsxZBjmLdoDT1G4sseyvjo9co26dYpzDNBeUD+ePY3N0eUCen3g+usWBmhfd95syizLXhXZumBiS0K3xtSawgEfI8e727NzMnHIyyFoZD64xr4/srCEFHUQjBoRs83kqi6uDqBRHAfIXJPlo3a/w7S11dXxZOo0G9R3gfVWPBzjPfRrtHpgJYEHLvNxHO1+gAloq6+r5NfhI05iPvDau1L3UQcGtB3nlzr6+7R+HyZuyru89rT2NhHYHchxO7BZpXlVMpvpbnxFn4g17tY7UleHBVQMY9K+ave4X/q8epawgqXDjeG1vDAjeEtUFf1BNy43yDraoBuEBX2LUDeWKfyo6TywSHDJwz+02F5t4nQ4yRcWvyxe/Ijge1tvF8mYUa8aLU9ezU0OMQHX7RAPvt5+baIvjpV3o8DlLhgv66M0f6Vg15Q5OzMNf67EryixaOvMtFegTMtJXxUi00eBtpcPvpQjKH+radvlqJ/jHHIRHB7xGsJY7hy8OQ51kOsm8IvkGQo15iF4F2uxrnRUbLmL5fl7MX54+88au6sFSkIR18Lkmrbo+0sdwV4chzLIsxC5hCL2sVJvYSQA9bLwGAXHan5thUMQ3kWvYJw/mE8W8WqPdJUhFgX5K01Df1u3ufqjoqX6KOvUv939mTxLzp9NP0ucg9GueagfmAyFGvMQvAsdqKnxVLTzR9pVrMvA4+85b55vQ/qIcaNfUjxaz7w//J8xuVn+Zy7mJOvqPBY24/tAchCiGMhF9gdpqULMTEg+X+8OjE8xjZBzDyLN8HtgLmWZPxSTBs5B4MBhY0W//8QAFBEBAAAAAAAAAAAAAAAAAAAAYP/aAAgBAgEBPwBJ/8QAFBEBAAAAAAAAAAAAAAAAAAAAYP/aAAgBAwEBPwBJ/9k=" class="img-circle" alt="User Image">

              <p>
                <?=$this->user->username?>
                <small><?=$this->user->email?></small>
              </p>
            </li>
            <!-- Menu Body -->
            <li class="user-body">
              <div class="row">
                <div class="col-xs-4 text-center">
                  <a href="#">Followers</a>
                </div>
                <div class="col-xs-4 text-center">
                  <a href="#">Sales</a>
                </div>
                <div class="col-xs-4 text-center">
                  <a href="#">Friends</a>
                </div>
              </div>
              <!-- /.row -->
            </li>
            <!-- Menu Footer-->
            <li class="user-footer">
              <div class="pull-left">
                <a href="#" class="btn btn-default btn-flat">Profile</a>
              </div>
              <div class="pull-right">
                <a href="<?= Url::to(['site/logout'])?>" class="btn btn-default btn-flat" data-method="post">Sign out</a>
              </div>
            </li>
          </ul>
        </li>
        <!-- Control Sidebar Toggle Button -->
        <li>
          <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
        </li>
      </ul>
    </div>

  </nav>
</header>