<?php 

$url = "../index.php?mod=page&act=list";

require_once "../model/Backend.php";

$model = new Backend;
$id = (int) $_POST['id'];

$page_name = $model->processData($_POST['page_name']);

$page_alias = $model->changeTitle($page_name);

$description = $_POST['description'];

$content = $_POST['content'];

$image_url_upload = $_FILES['image_url_upload'];
if(($image_url_upload['name']!='')){
	$arrRe = $model->uploadImages($image_url_upload);	
	$image_url = $arrRe['filename'];
}else{
	$image_url = str_replace('../', '', $_POST['image_url']);
}

$meta_title = $model->processData($_POST['meta_title']);
$meta_keyword = $model->processData($_POST['meta_keyword']);
$meta_description = $model->processData($_POST['meta_description']);

if($meta_title=='') $meta_title = $page_name;
if($meta_keyword=='') $meta_keyword = $page_name;
if($meta_description=='') $meta_description = $page_name;

if($id > 0) {	

	$model->updatePage($id,$page_name,$page_alias,$description,$content,$meta_title,$meta_keyword,$meta_description,$image_url);

	header('location:'.$url);

}else{

	$model->insertPage($page_name,$page_alias,$description,$content,$meta_title,$meta_keyword,$meta_description,$image_url);

	header('location:'.$url);

}



?>