<!-- sidebar: style can be found in sidebar.less -->
<section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
        <div class="pull-left image">
            <img src="<?php echo STATIC_URL; ?>img/avatar3.png" class="img-circle" alt="User Image" />
        </div>
        <div class="pull-left info">
            <p>Hello, <?php echo $_SESSION['full_name']; ?></p>  
        </div>
    </div>
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
        <li>
            <a href="<?php echo BASE_URL; ?>category&act=list">
                <i class="fa fa-th"></i> <span>Loại sản phẩm</span> <!--<small class="badge pull-right bg-green">new</small>-->            </a>
        </li> 
        <li>
            <a href="<?php echo BASE_URL; ?>product&act=list">
                <i class="fa fa-th"></i> <span>Sản phẩm</span> <!--<small class="badge pull-right bg-green">new</small>-->            </a>
        </li>        
      
        <li>
            <a href="<?php echo BASE_URL; ?>page&act=list">
                <i class="fa fa-th"></i> <span>Trang nội dung</span> <!--<small class="badge pull-right bg-green">new</small>-->
            </a>
        </li>
       
        <li>
            <a href="<?php echo BASE_URL; ?>articles&act=list">
                <i class="fa fa-th"></i> <span>Quản lý tin tức</span> <!--<small class="badge pull-right bg-green">new</small>-->
            </a>
        </li> 

        <li>
            <a href="<?php echo BASE_URL; ?>banner&act=index">
                <i class="fa fa-th"></i> <span>Hình ảnh</span> <!--<small class="badge pull-right bg-green">new</small>-->
            </a>
        </li>   
        <li>
            <a href="<?php echo BASE_URL; ?>contact&act=list">
                <i class="fa fa-th"></i> <span>Khách hàng liên hệc</span> <!--<small class="badge pull-right bg-green">new</small>-->
            </a>
        </li> 
    </ul>
</section>
<!-- /.sidebar -->