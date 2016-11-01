<?php 

$url = "../index.php?mod=cate&act=list";

require_once "../model/Backend.php";

$model = new Backend;

$id = (int) $_POST['cate_id'];

$cate_type_id = (int) $_POST['cate_type_id'];

$parent_id = (int) $_POST['parent_id'];

$cate_name = $model->processData($_POST['cate_name']);

$cate_alias = $model->changeTitle($cate_name);

$is_hot = (int) $_POST['is_hot'];
$hidden = (int) $_POST['hidden'];

$display_order = 1;

$content = $_POST['content'];

$meta_title = $model->processData($_POST['meta_title']);

$meta_description = $model->processData($_POST['meta_description']);

$meta_keyword = $model->processData($_POST['meta_keyword']);

if($meta_title =='') $meta_title = $cate_name;
if($meta_description =='') $meta_description = $cate_name;
if($meta_keyword =='') $meta_keyword = $cate_name;

$image_url_upload = $_FILES['image_url_upload'];
$icon_url_upload = $_FILES['icon_url_upload'];

if(($image_url_upload['name']!='')){
	$arrRe = $model->uploadImages($image_url_upload);	
	$image_url = $arrRe['filename'];
}else{
	$image_url = str_replace('../', '', $_POST['image_url']);
}
if(($icon_url_upload['name']!='')){
	$arrRe = $model->uploadImages($icon_url_upload);	
	$icon_url = $arrRe['filename'];
}else{
	$icon_url = str_replace('../', '', $_POST['icon_url']);
}


if($id > 0) {	
	
	$model->updateCate($id,$cate_name,$cate_alias,$parent_id,$cate_type_id,$image_url,$icon_url,$content,$is_hot,$display_order,$meta_title,$meta_description,$meta_keyword,$hidden);
	if($parent_id > 0){
		header('location:../index.php?mod=cate&act=list-child&parent_id='.$parent_id);
	}else{
		header('location:'.$url.'&cate_type_id='.$cate_type_id);
	}	
}else{

	$model->insertCate($cate_name,$cate_alias,$parent_id,$cate_type_id,$image_url,$icon_url,$content,$is_hot,$display_order,$meta_title,$meta_description,$meta_keyword,$hidden);

	if($parent_id > 0){
		header('location:../index.php?mod=cate&act=list-child&parent_id='.$parent_id);
	}else{
		header('location:'.$url.'&cate_type_id='.$cate_type_id);
	}	
}
?>
