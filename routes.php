<?php
if(!isset($_SESSION)){
    session_start();
}
require_once 'models/Home.php';
$model = new Home;
$mod = isset($_GET['mod']) ? $_GET['mod'] : "";
$arrText = $model->getListText();
function checkCat($uri) {
    require_once 'models/Home.php';
    $model = new Home; 

    $uri = str_replace("+", "", $uri);

    $p_detail = '#chi-tiet/[a-z0-9\-\+]+\-\d+.html#';
    $p_detail_news = '#tin-tuc/[a-z0-9\-\+]+\-\d+.html#';
    $p_cate_page = '#/[a-z0-9\-\+]+.html#';
    $p_tag = '#/tag/[a-z\-]+.html#';
    $p_contact = '#/lien-he+.html#';   
    $p_about = '#/gioi-thieu+.html#';   
    $p_tintuc = '#/tin-tuc+.html#';   
    
    $mod = $seo = "";
    $object_id = 0;   
    
    if(strpos($uri, 'chi-tiet/')){

        $mod = "detail";
        
    }elseif(strpos($uri, 'tin-tuc/')){

        $mod = "detail-news";
        
    }elseif(strpos($uri, 'tim-kiem.')){

        $mod = "search";
        
    }elseif(strpos($uri, 'san-pham.')){

        $mod = "product";        
        
    }elseif(strpos($uri, 'hinh-anh-hat-dieu.')){

        $mod = "gallery";        
        
    }else{
        
        
        if (preg_match($p_cate_page, $uri)) {
            $uri = str_replace("/", '', $uri);         
            $tmp = explode(".", $uri);
            
            if($tmp[0] == "lien-he"){
                $mod = "contact";
            }elseif($tmp[0] =="tin-tuc"){
                $mod = "news";
                $seo = $model->getDetailSeo(4);
            }else{
                $row = $model->getDetailAlias($tmp[0]);
                $mod = $row['type'] == 1 ? "cate" : "content";                
                $object_id = $row['object_id'];                
            }
        }   
       
        if (preg_match($p_about, $uri)) {
            $mod = "about";
            $seo = $model->getDetailSeo(2);
        }        
       
        if (preg_match($p_detail_news, $uri)) {
            $mod = "detail-news";
        }
        
        if (preg_match($p_tintuc, $uri)) {
            $mod = "news";
            $seo = $model->getDetailSeo(4);
        }       
        
        if (preg_match($p_contact, $uri)) {
            $mod = "contact";        
        }      
        
    }
    return array("seo"=>$seo, "mod" =>$mod,'object_id' => $object_id);
}

$uri = $_SERVER['REQUEST_URI'];

$arrRS = checkCat($uri);
//var_dump($arrRS);die;
$mod = $arrRS['mod'];
$object_id = $arrRS['object_id']; 

$uri = str_replace(".html", "", $uri);
$tmp_uri = explode("/", $uri);

switch ($mod) {
    case "news":
        $tieude_id = $tmp_uri[1];
        $arr = explode("-", $tieude_id);
        $page = (int) end($arr);
        $page = ($page==0) ? 1 : $page;
        $seo = $model->getDetailSeo(4);        
        break;    
    case "register" : 
         $seo = $model->getDetailSeo(11);
         break;
    case "search" : 
        $seo = $model->getDetailSeo(10);
        break;   
    case "contact": 
        $seo = $model->getDetailSeo(3);              
        break;    
    case "detail":
        $product_alias = $tmp_uri[2];
        
        $product_id = $model->getProductId($product_alias);
        $arrDetailProduct = $model->getDetailProduct($product_id);
        $data = $seo = $arrDetailProduct['data'];
        $parent_id = $data['parent_cate'];
        $cate_type_id = $data['cate_type_id'];
        $_SESSION['view'][$product_id] = $data;        
        $arrRelated = $model->getProductRelated($parent_id,$product_id);         
        $arrDetailCate =$model->getDetailCate($parent_id); 
        $arrDetailCateType =$model->getDetailCateType($cate_type_id); 
        break;
    case "detail-news":
        $article_alias = $tmp_uri[2];   
        $article_id = $model->getArticleId($article_alias);
        $data = $seo = $model->getDetailArticles($article_id);                   
        break; 
   
    case "product":
        $cate_id = -1;
        $seo['meta_title'] = "Sản phẩm hạt điều | Các sản phẩm hạt điều của cơ sở hạt điều Thương Thương";
        $seo['meta_description'] = "Tổng hợp tất cả các sản phẩm hạt điều của cơ sở hạt điều Thương Thương";
        $seo['meta_keyword'] = "sản phẩm hạt điều, hat dieu thuong thuong, tong hop san pham, cac san pham cua thuong thuong";
        break; 
    case "gallery" : 
         $seo['meta_title'] = "Hình ảnh sản phẩm";
        $seo['meta_description'] = "Tổng hợp tất cả các hình ảnh về sản phẩm hạt điều của cơ sở hạt điều Thương Thương";
        $seo['meta_keyword'] = "hinh anh san pham, hinh anh hat dieu, san pham thuong thuong, hat dieu thuong thuong";
        break;
    case "cate":
        $mod = "product";
        $cate_id = $object_id;
        $seo = $model->getDetailCategory($cate_id);
        break;
    
    case "content":        
        $page_id = $object_id; 
        $data = $seo = $model->getDetailPage($page_id);
        break;
    case "page":

        $rs_article = $modelHome->getDetailPage($page_id);
        $arrDetailPage = mysql_fetch_assoc($rs_article);
        break;
    default :    
        $seo = $model->getDetailSeo(1);
        break;
}
?>
