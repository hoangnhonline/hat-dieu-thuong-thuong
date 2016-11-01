<?php 
$arrCate = $model->getListCategory();
?>
<?php include "blocks/slide.php"; ?>
<?php include "blocks/about.php"; ?>
<div class="main-content">
	<p class="title-content">
		Sản phẩm tiêu biểu
	</p>
	<div class="col-md-12" id="content-gioithieu" >
		<?php if(!empty($arrCate)){ 
			foreach ($arrCate as $value) {		
		?>
		<div class="col-sm-6 container-popular">
			<div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                <div class="flipper">
                    <div class="front">
                        <h5><?php echo $value['name']; ?></h5>
                        <figure class="featured-thumbnail thumbnail">
                            <img src="<?php echo $value['image_url']; ?>" class="img-responsive" alt="<?php echo $value['name']; ?>" title="<?php echo $value['name']; ?>" />
                        </figure>
                    </div>
                    <div class="back">
                        <div class="inner">
                            <h5><?php echo $value['name']; ?></h5>
                            <br />
                            <p class="excerpt">
                              <?php echo $value['description']; ?>
                            </p> 
                            <a href="<?php echo $value['name_en']; ?>.html" class="product-popular">Xem sản phẩm</a>                           
                        </div>
                    </div>
                </div>
            </div>

		</div>
		<?php } } ?>		
	</div>
	<div class="clearfix"></div>
</div>