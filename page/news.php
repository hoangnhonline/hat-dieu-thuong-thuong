<?php
$page_show = 5;
$arrTotal = $model->getListArticles(-1, -1);
$limit = 10;
$page = (isset($_GET['trang'])) ? (int) $_GET['trang'] : 1;
$total_page = ceil($arrTotal['total'] / $limit);
$offset = $limit * ($page - 1);
$arrList = $model->getListArticles($offset, $limit);
$link = "tin-tuc.html";
?>
<div class="main-content">
	<p class="title-content">
		Tin tức
	</p>
	<div class="col-md-12" id="content-gioithieu" >
		<?php
        if(!empty($arrList['data'])){
        $i = 0;
        foreach($arrList['data'] as $row){
        $i++;
    	?>
		<div class="news" >
			
			<div class="col-md-3">
				<a href="tin-tuc/<?php echo $row['article_alias']; ?>.html">
					<img src="<?php echo $row['image_url']; ?>" class="img-responsive" alt="<?php echo $row['article_title']; ?>"/>
				</a>				
			</div>
			<div class="col-md-9">
				<a href="tin-tuc/<?php echo $row['article_alias']; ?>.html" class="news-title">
					<?php echo $row['article_title']; ?>
				</a>
				<p class="desc">
					<?php echo $row['description']; ?>
				</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<?php } ?>
		<div class="pager-container">
	        <div class="pager">
	           <?php echo $model->phantrang($page,$page_show,$total_page,$link); ?> 
	        </div>        
	    </div>

		<?php } ?>		
	</div>
	<div class="clearfix"></div>
</div>