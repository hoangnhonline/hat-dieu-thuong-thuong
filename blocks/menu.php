<div class="clearfix"></div>
<nav class="navbar navbar-inverse">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>		
	</div>
	<div class="navbar-collapse" id="menu">
		<ul class="nav navbar-nav">
			<li <?php if($mod=="home") echo 'class="active"'; ?>><a href="http://hatdieuthuongthuong.com">Trang chủ</a></li>
          <li <?php if($mod=="content" && $page_id == 1) echo 'class="active"'; ?>><a href="gioi-thieu.html">Giới thiệu</a></li>
          <li <?php if($mod=="product") echo 'class="active"'; ?>><a href="san-pham.html">Sản phẩm</a></li>
          <li <?php if($mod=="gallery") echo 'class="active"'; ?>><a href="hinh-anh-hat-dieu.html">Thư viện ảnh</a></li>
          <li <?php if($mod=="news") echo 'class="active"'; ?>><a href="tin-tuc.html">Tin tức</a></li>
          <li <?php if($mod=="contact") echo 'class="active"'; ?>><a href="lien-he.html">Liên hệ</a></li>	 
		</ul>
	</div>
</nav>