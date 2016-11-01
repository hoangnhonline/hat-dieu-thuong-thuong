<?php
$url = "../index.php?mod=category&act=list";
require_once "../model/Backend.php";
$model = new Backend;

$id = (int) $_POST['category_id'];
$name = $model->processData($_POST['name']);
$name_en = $model->changeTitle($name);
if($id>0){
	$display_order = $_POST['display_order'];
}else{
	$display_order = $model->getOrderMax("category") + 1;
}

$description = $_POST['description'];

$meta_title = $model->processData($_POST['meta_title']);

$meta_description = $model->processData($_POST['meta_description']);

$meta_keyword = $model->processData($_POST['meta_keyword']);

if($meta_title =='') $meta_title = $manu_name;
if($meta_description =='') $meta_description = $manu_name;
if($meta_keyword =='') $meta_keyword = $manu_name;

$image_url_upload = $_FILES['image_url_upload'];
if(($image_url_upload['name']!='')){
	$arrRe = $model->uploadImages($image_url_upload);	
	$image_url = $arrRe['filename'];
}else{
	$image_url = str_replace('../', '', $_POST['image_url']);
}

if($id > 0) {
	$model->updateCategory($id,$name,$name_en,$image_url,$description,$display_order,$meta_title,$meta_description,$meta_keyword);
	header('location:'.$url);
}else{
	$model->insertCategory($name,$name_en,$image_url,$description,$display_order,$meta_title,$meta_description,$meta_keyword);
	header('location:'.$url);
}

?>