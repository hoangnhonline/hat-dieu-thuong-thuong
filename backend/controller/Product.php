<?php
$url = "../index.php?mod=product&act=list";
require_once "../model/Backend.php";
$model = new Backend;

$id = (int) $_POST['product_id'];
$name = $model->processData($_POST['name']);
$name_en = $model->changeTitle($name);
$category_id = (int) $_POST['category_id'];
$description = $_POST['description'];

$image_url_upload = $_FILES['image_url_upload'];
if(($image_url_upload['name']!='')){
	$arrRe = $model->uploadImages($image_url_upload);	
	$image_url = $arrRe['filename'];
}else{
	$image_url = str_replace('../', '', $_POST['image_url']);
}

if($id > 0) {
	$model->updateProduct($id,$name,$name_en,$image_url,$description,$category_id);
	header('location:'.$url);
}else{
	$model->insertProduct($name,$name_en,$image_url,$description,$category_id);
	header('location:'.$url);
}

?>