<div class="main-content">
	<h1 class="title-content"><?php echo $data['page_name']; ?></h1>	
	<div class="col-md-12" id="content-gioithieu" >
		<p class="page-content-abput">
			<?php if($page_id == 1) { ?>
			<img src="<?php echo $data['image_url']; ?>" class="img-thumbnail"  width="300px" align="right" title="gioi thieu hat dieu thuong thuong" alt="gioi thieu hat dieu thuong thuong">
			<?php } ?>
			<?php echo $data['content']; ?>
		</p>		
	</div>
	<div class="clearfix"></div>
</div>