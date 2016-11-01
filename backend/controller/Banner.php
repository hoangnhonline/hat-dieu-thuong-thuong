<?php 

$url = "../index.php?mod=banner&act=list";

require_once "../model/Backend.php";

$model = new Backend;

$position_id = (int) $_POST['position_id'];

for($i= 1 ; $i<=5; $i++){
	$image_url_upload = $_FILES['image_url_'.$i];
	if(($image_url_upload['name']!='')){
		$arrRe = $model->uploadImages($image_url_upload);	
		$arrUrl[] = $arrRe['filename'];
	}
}
if(!empty($arrUrl)){
	foreach ($arrUrl as $image_url) {
		$sql = "INSERT INTO banner VALUES(NULL,$position_id,'$image_url')";
		mysql_query($sql);
	}
}
header('location:'.$url.'&id='.$position_id."&name=".$_POST['name']);

?>
