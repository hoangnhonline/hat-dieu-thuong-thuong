<?php $arrList = $model->getListArticlesOther($article_id); ?>
<div class="main-content">
	<p class="title-content">
		<a href="tin-tuc.html" title="Tin tuc">Tin tức</a> 
		<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
		<span><?php echo $data['article_title']; ?></span>
	</p>
	<div class="col-md-12" style="clear:both">
		<div class="head-detail col-md-12">
			<a class="title-detail">
				<?php echo $data['article_title']; ?>
			</a>
			<p class="desc-detail">
				<?php echo $data['description']; ?>
			</p>
			<div style="clear:both"></div>
		</div>
		<div class="body-detail col-md-12">
			<?php echo $data['content']; ?>
				<div style="clear:left;margin-bottom:20px"></div>

		</div>
		<div style="clear:both"></div>
		<p class="title-other">Các tin khác</p>
		<ul>
			<?php if(!empty($arrList)) { 
				foreach ($arrList as $row) {					
			?>
			<li style="margin-bottom:7px">
				<a href="tin-tuc/<?php echo $row['article_alias']; ?>.html" title="<?php echo $row['article_title']; ?>">
				<?php echo $row['article_title']; ?>
				</a>
			</li>
			<?php }} ?>
		</ul>
	</div>
</div>