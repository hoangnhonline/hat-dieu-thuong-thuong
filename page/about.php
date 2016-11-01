<div id="content">
  <!--Breadcrumb Part Start-->
  <div class="breadcrumb">
    <a href="<?php echo $baseUrl; ?>" title="Trang chủ">Trang chủ</a> » 
    <?php echo $data['page_name']; ?>
  </div>
  <!--Breadcrumb Part End-->
  <h1><?php echo $data['page_name']; ?></h1>
  <div>
    <?php echo $data['content']; ?>
  </div>
</div><div class="main-content">
	<p class="title-content">
		<?php echo $data['page_name']; ?>
	</p>
	<div class="col-md-12" id="content-gioithieu" >
		<p class="page-content-abput">
			<?php if($page_id == 1) { ?>
			<img src="<?php echo $data['image_url']; ?>"  width="300px" align="right" title="gioi thieu hat dieu thuong thuong" alt="gioi thieu hat dieu thuong thuong">
			<?php } ?>
			<?php echo $data['content']; ?>
		</p>		
	</div>
	<div class="clearfix"></div>
</div>