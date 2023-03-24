<?php
//die('11233344');
//echo "<h1>Server đang bảo trì, vui lòng quay lại sau 08:00 ngày 17-12-2016. Xin cảm ơn.</h1>";die; 
session_start();
ini_set('display_errors', 1);
require_once 'routes.php';

include "counter.php";
?>

<!DOCTYPE html>
<html lang="vi">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php echo $seo['meta_title']; ?></title>      
	<meta name="description" content="<?php echo $seo['meta_description']; ?>">
	<meta name="keywords" content="<?php echo $seo['meta_keyword']; ?>">
	<base href="http://<?php echo $_SERVER['SERVER_NAME']; ?>">
	<meta name="copyright" content="Hạt điều Thương Thương" />
	<meta name="author" content="hoangnhonline" />
	<meta name="robots" content="index,follow" />
	<meta name="geo.region" content="VN" />
	<meta name="geo.placename" content="Hồ Chí Minh" />
	<meta name="geo.position" content="10.765737;106.64713" />
	<meta name="ICBM" content="10.765737, 106.64713" />
	<meta name="DC.Title" content="Hạt điều Thương Thương">
	<meta name="DC.Creator" content="hoangnhonline">
	<meta name="DC.Subject" content="Hạt điều Thương Thương">
	<meta name="DC.Description" content="Hạt điều Thương Thương chuyên cung cấp các loại hạt điều chế biến">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico">
	<?php if($mod=="product"){ ?>
	<link rel="stylesheet" type="text/css" href="css/product.css">
	<?php } ?>
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/jcarousel.responsive.css">
	<?php if($mod=="gallery"){ ?>
    <link href="css/royalslider.css" rel="stylesheet">          
    <script src="js/jquery.royalslider.min.js?v=9.3.6"></script>       
    <link href="css/rs-default.css?v=1.0.4" rel="stylesheet">
    <?php } ?>
</head>
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3&appId=567408173358902";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="container" id="wrappertt">

	<div class="row" >
		<?php include "blocks/banner.php";  ?>
		<?php include "blocks/menu.php";  ?>
		<?php include "blocks/marquee.php";  ?>				
		<div class="col-md-12" id="content">			
			<div id="left" class="col-md-9">
				<?php 	
				if($mod == ""){
					include "page/home.php";  
				}else{
					include "page/".$mod.".php";  
				}			
				?>				
				<?php if(!in_array($mod,array('gallery','contact','news','detail'))){ ?>
				<div class="main-content">
					<p class="title-content">
						Hình ảnh
					</p>
					<div class="col-md-12" id="content-gioithieu" >
						<div class="jcarousel-wrapper">
				            <div class="jcarousel">
				                <ul>
				                	<?php 
								  	$arrBanner = getListBannerByPosition(2);
								  	if(!empty($arrBanner)){
								  		$j = 0 ;
								  		foreach ($arrBanner as $value) {
								  			$j ++;
								  	?>
				                	<li><img src="<?php echo $value['image_url']; ?>" alt="Image <?php  echo $j; ?>"></li>
				                	<?php }} ?>                    			                       
				                </ul>
				            </div>	
				            <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
				            <a href="#" class="jcarousel-control-next">&rsaquo;</a>			                    
				        </div>
					</div>
					<div class="clearfix"></div>
				</div>
				<?php } ?>
			</div>
			<?php include "blocks/right.php"; ?>
		</div>
		<?php include "blocks/footer.php"; ?>
	</div>
	<div class="row">
		<div></div>
	</div>
</div>
<div id="banner_l" class="banner" ><img src="img/b1.jpg" alt="banner left" title="banner left" /></div>
<div id="banner_r" class="banner"><img src="img/b2.jpg" alt="banner right" alt="banner right" /></div>
<script src="js/bootstrap.min.js"></script>
<?php if(in_array($mod, array("home","product","about"))){ ?>
<script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="js/jcarousel.responsive.js"></script>
<script type="text/javascript">
	$(function(){
		$('.jcarousel').jcarousel({
		    autostart: true
		});
	});
</script>
<?php } ?>
<script type="text/javascript">
	$(function(){
		$banner=$('.banner');
		$window=$(window);
		$topDefault=parseFloat($banner.css('top'), 10);
		$window.scroll(function(){
			$top=$(this).scrollTop();
			$banner.stop().animate({top: $top+$topDefault}, 1000, 'easeOutCirc');
		});

		$wiBanner=$banner.outerWidth()*2;
		zindex($('#wrappertt').outerWidth());
		$window.resize(function(){
			zindex($('#wrappertt').outerWidth());
		})
		function zindex(maxWidth){
			if($window.width() <= maxWidth+$wiBanner){
				$banner.addClass('zindex');
			}else{
				$banner.removeClass('zindex');
			}
		}
	});
	
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-53928005-3', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>
