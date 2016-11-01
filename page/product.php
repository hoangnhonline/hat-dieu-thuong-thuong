<?php 
$arrProduct = $model->getProductByCategory($cate_id);
?>
<div class="main-content">
	<h1 class="title-content">
		<?php if($cate_id == -1) { ?>
			Sản phẩm
		<?php }else { 
			echo $seo['name'];
		} ?>
	</h1>
	<div class="col-md-12" id="content-gioithieu" >
        <?php 
        if(!empty($arrProduct)){
            foreach ($arrProduct as $value) {                
        ?>
		<div class="col-md-6">
			<div class="view view-first">
	            <img width="320px" title="<?php echo $value['name']; ?>" src="<?php echo $value['image_url'] ?>" alt="<?php echo $value['name']; ?>" />
	            <div class="mask">
	                <h2><?php echo $value['name']; ?></h2>
	                <p><?php echo $value['description']; ?></p>	                
	            </div>
	        </div>
		</div>
        <?php } } ?>		
	</div>
	<div class="clearfix"></div>
</div>