<?php
class Home {
  
    //private $host = "localhost";
    //private $user = "thietken_box";
    //private $pass = "12345!@#";
    //private $db = "thietken_box";


   function __construct() {
  
		mysql_connect('localhost', 'root', 'tuenhi1908') or die("Can't connect to serversss");

	        mysql_select_db('hatdieu') or die("Can't connect database");	
    
        mysql_query("SET NAMES 'utf8'") or die(mysql_error());
    }
function getListArticles($offset,$limit){
        $arrReturn = array();
        $sql = "SELECT * FROM articles WHERE hidden = 0 ORDER BY article_id DESC ";
        if ($limit > 0 && $offset >= 0)
                $sql .= " LIMIT $offset,$limit"; 
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
               $arrReturn['data'][] = $row;
            }
            $arrReturn['total'] = mysql_num_rows($rs);     
        return $arrReturn;
    }
    function getDetailSeo($id) {
        $arrReturn = array();      
        $sql = "SELECT * FROM seo WHERE id = $id";
        $rs = mysql_query($sql) or die(mysql_error());
        $row =mysql_fetch_assoc($rs);
        $arrReturn = $row;           
        return $arrReturn;
    }
    function getDetailAlias($alias){
        $sql = "SELECT object_id, type FROM url WHERE alias = '$alias'";
        $rs = mysql_query($sql);
        $row = mysql_fetch_assoc($rs);
        return $row;
    }
    function getProductId($product_alias){
        $sql = "SELECT id FROM product WHERE product_alias = '$product_alias'";
        $rs = mysql_query($sql);
        $row = mysql_fetch_assoc($rs);
        return $row['id'];
    }
     function getDetailCategory($id){
        $arrReturn = array();      
        $sql = "SELECT * FROM category WHERE id = $id";
        $rs = mysql_query($sql) or die(mysql_error());
        $row =mysql_fetch_assoc($rs);
        $arrReturn = $row;           
        return $arrReturn;
    }
    function getCateArticleId($cate_alias){
        $sql = "SELECT cate_id FROM article_cate WHERE cate_alias = '$cate_alias'";
        $rs = mysql_query($sql);
        $row = mysql_fetch_assoc($rs);
        return $row['cate_id'];
    }
    function getArticleId($article_alias){
        $sql = "SELECT article_id FROM articles WHERE article_alias = '$article_alias'";
        $rs = mysql_query($sql);
        $row = mysql_fetch_assoc($rs);
        return $row['article_id'];
    }
    function processData($str) {
        $str = trim(strip_tags($str));
        if (get_magic_quotes_gpc() == false) {
            $str = mysql_real_escape_string($str);
        }
        return $str;
    }
    function getListArticlesOther($article_id){
        $arrReturn = array();
        $sql = mysql_query("SELECT * FROM articles WHERE article_id <> $article_id ORDER BY rand() LIMIT 0,8");
        while($row = mysql_fetch_assoc($sql)){
            $arrReturn[] = $row;
        }
        return $arrReturn;
    }
     function getListBannerByPosition($position_id){
        $arrReturn = array();
        $sql = mysql_query("SELECT * FROM banner WHERE position_id = $position_id");
        while($row = mysql_fetch_assoc($sql)){
            $arrReturn[] = $row;
        }
        return $arrReturn;
    }
    function getListCategory() {
        try{
            $arrReturn = array();
            $sql = "SELECT * FROM category ORDER BY display_order";                                 
            $rs = mysql_query($sql) or die(mysql_error());            
            while($row =mysql_fetch_assoc($rs)){
                $arrReturn[$row['id']] =  $row;                           
            } 
        }catch(Exception $ex){            
            $arrLog = array('time'=>date('d-m-Y H:i:s'),'model'=> 'Manu','function' => 'getListManu' , 'error'=>$ex->getMessage(),'sql'=>$sql);
            $this->logError($arrLog);
        }
        return $arrReturn;
    }
     function insertOrderDetail($order_id,$product_id,$product_name,$amount,$price,$total){
        $time = time();
        $sql = "INSERT INTO order_detail VALUES(NULL,$order_id,$product_id,'$product_name',$amount,$price,$total,$time,1)";
        mysql_query($sql) or die(mysql_error());
    }
    function getDetailBlockFooter($block_id){
        $arrReturn = array();
        $sql = "SELECT * FROM block WHERE block_id = $block_id";
        $rs = mysql_query($sql) or die(mysql_error());
        $row = mysql_fetch_assoc($rs);
        $arrReturn['data'] = $row;   
        $sql1 = "SELECT * FROM link WHERE block_id = $block_id";
        $rs1 = mysql_query($sql1) or die(mysql_error());
        while($row1 = mysql_fetch_assoc($rs1)){
            $arrReturn['link'][] = $row1;
        }
        return $arrReturn;
    }
    function changeTitle($str) {
        $str = $this->stripUnicode($str);
        $str = str_replace("?", "", $str);
        $str = str_replace("&", "", $str);
        $str = str_replace("'", "", $str);
        $str = str_replace("  ", " ", $str);
        $str = trim($str);
        $str = mb_convert_case($str, MB_CASE_LOWER, 'utf-8'); // MB_CASE_UPPER/MB_CASE_TITLE/MB_CASE_LOWER
        $str = str_replace(" ", "-", $str);
        $str = str_replace("---", "-", $str);
        $str = str_replace("--", "-", $str);
        $str = str_replace('"', '', $str);
        $str = str_replace('"', "", $str);
        $str = str_replace(":", "", $str);
        $str = str_replace("(", "", $str);
        $str = str_replace(")", "", $str);
        $str = str_replace(",", "", $str);
        $str = str_replace(".", "", $str);
        $str = str_replace("?", "", $str);
        $str = str_replace("'", "", $str);
        $str = str_replace('"', "", $str);
        $str = str_replace("%", "", $str);
        for($i = 0;$i<=strlen($str);$i++){
            $str = str_replace(" ", "-", $str);
            $str = str_replace("--", "-", $str);
        }

        return $str;
    }
    function throw_ex($e){
        throw new Exception($e);
    }
    
    /* category */
    function getDetailCate($id) {
        $arrReturn = array();      
        $sql = "SELECT * FROM cate WHERE id = $id";
        $rs = mysql_query($sql) or die(mysql_error());
        $row =mysql_fetch_assoc($rs);
        $arrReturn = $row;           
        return $arrReturn;
    }
    function getListArticleByCate($cate_id){
        $arrReturn = array();
        $sql = "SELECT * FROM articles WHERE cate_id = $cate_id ORDER BY article_id DESC LIMIT 0,7";
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
            $arrReturn[] = $row;
        }
        return $arrReturn;
    }
    function getListCate($cate_type_id=-1) {
        try{
            $arrReturn = array();
            $sql = "SELECT * FROM cate WHERE (cate_type_id = $cate_type_id OR $cate_type_id = -1) AND parent_id = 0 ";           
            $sql.=" AND status = 1 ";
            $rs = mysql_query($sql) or die(mysql_error());            
            while($row =mysql_fetch_assoc($rs)){
                $arrReturn[$row['id']] =  $row;            
                $rs1 = mysql_query("SELECT * FROM cate WHERE parent_id = ".$row['id']);
                while($row1 = mysql_fetch_assoc($rs1)){
                    $arrReturn[$row['id']]['child'][$row1['id']] = $row1;                
                    $rs2 = mysql_query("SELECT * FROM cate WHERE parent_id = ".$row1['id']);
                    while($row2 = mysql_fetch_assoc($rs2)){                    
                        $arrReturn[$row['id']]['child'][$row1['id']]['child'][$row2['id']] = $row2;
                    }
                }
            } 
        }catch(Exception $ex){            
            $arrLog = array('time'=>date('d-m-Y H:i:s'),'model'=> 'Cate','function' => 'getListCate' , 'error'=>$ex->getMessage(),'sql'=>$sql);
            $this->logError($arrLog);
        }
        return $arrReturn;
    }
    function getListCateNoTreeByParent($parent_id) {
        try{
            $arrReturn = array();
            $sql = "SELECT * FROM cate WHERE hidden = 0 AND parent_id = $parent_id ";                      
            $rs = mysql_query($sql) or die(mysql_error());            
            while($row =mysql_fetch_assoc($rs)){
                $arrReturn[$row['id']] =  $row;                            
            } 
        }catch(Exception $ex){            
            $arrLog = array('time'=>date('d-m-Y H:i:s'),'model'=> 'Cate','function' => 'getListCateNoTreeByParent' , 'error'=>$ex->getMessage(),'sql'=>$sql);
            $this->logError($arrLog);
        }
        return $arrReturn;
    }
    function getListCateNoTreeByParentMenu($parent_id) {
        try{
            $arrReturn = array();
            $sql = "SELECT * FROM cate WHERE hidden = 0 AND parent_id = $parent_id AND is_hot = 1";                      
            $rs = mysql_query($sql) or die(mysql_error());            
            while($row =mysql_fetch_assoc($rs)){
                $arrReturn[$row['id']] =  $row;                            
            } 
        }catch(Exception $ex){            
            $arrLog = array('time'=>date('d-m-Y H:i:s'),'model'=> 'Cate','function' => 'getListCateNoTreeByParent' , 'error'=>$ex->getMessage(),'sql'=>$sql);
            $this->logError($arrLog);
        }
        return $arrReturn;
    }
    function getAgeRange(){
        try{
            $arrReturn = array();
            $sql = "SELECT * FROM age_range ";                      
            $rs = mysql_query($sql) or die(mysql_error());            
            while($row =mysql_fetch_assoc($rs)){
                $arrReturn[$row['id']] =  $row;                            
            } 
        }catch(Exception $ex){            
            $arrLog = array('time'=>date('d-m-Y H:i:s'),'model'=> 'Age','function' => 'getAgeRange' , 'error'=>$ex->getMessage(),'sql'=>$sql);
            $this->logError($arrLog);
        }
        return $arrReturn;   
    }
    /* manufacture */   
    function getDetailManu($id) {
        $arrReturn = array();      
        $sql = "SELECT * FROM manu WHERE id = $id";
        $rs = mysql_query($sql) or die(mysql_error());
        $row =mysql_fetch_assoc($rs);
        $arrReturn = $row;           
        return $arrReturn;
    }
    
    function getListManu($is_hot=-1) {
        try{
            $arrReturn = array();
            $sql = "SELECT * FROM manu WHERE (is_hot = $is_hot OR $is_hot = -1) AND hidden = 0 ";                       
            $rs = mysql_query($sql) or die(mysql_error());            
            while($row =mysql_fetch_assoc($rs)){
                $arrReturn[$row['id']] =  $row;                           
            } 
        }catch(Exception $ex){            
            $arrLog = array('time'=>date('d-m-Y H:i:s'),'model'=> 'Manu','function' => 'getListManu' , 'error'=>$ex->getMessage(),'sql'=>$sql);
            $this->logError($arrLog);
        }
        return $arrReturn;
    }
    /* pages */
    function getListText(){
        $arrResult = array();
        $sql = "SELECT * FROM text";
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
            $arrResult[$row['id']] = $row['text'];
        }
        return $arrResult;
    }
    function getDetailPage($id) {
        $arrReturn = array();      
        $sql = "SELECT * FROM pages WHERE id = $id";
        $rs = mysql_query($sql) or die(mysql_error());
        $row =mysql_fetch_assoc($rs);
        $arrReturn = $row;              
        return $arrReturn;
    }
    function getProductByCategory($cate_id=-1){
        $arrReturn = array();      
        $sql = "SELECT * FROM product WHERE category_id = $cate_id OR $cate_id = -1 ";
        $rs = mysql_query($sql) or die(mysql_error());
        while ($row = mysql_fetch_assoc($rs)) {
            $arrReturn[] = $row;
        }
        return $arrReturn;
    }
    function getListPage($is_hot=-1) {
        try{
            $arrReturn = array();
            $sql = "SELECT * FROM pages WHERE (is_hot = $is_hot OR $is_hot = -1) AND status = 1 ";                       
            $rs = mysql_query($sql) or die(mysql_error());            
            while($row =mysql_fetch_assoc($rs)){
                $arrReturn[$row['id']] =  $row;                           
            } 
        }catch(Exception $ex){            
            $arrLog = array('time'=>date('d-m-Y H:i:s'),'model'=> 'Page','function' => 'getListPage' , 'error'=>$ex->getMessage(),'sql'=>$sql);
            $this->logError($arrLog);
        }
        return $arrReturn;
    }

    /* product */    
    function getListProductHomePage($cate_type_id,$limit){
        $arrReturn = array();
        $sql = "SELECT * FROM product WHERE is_hot = 1 AND cate_type_id = $cate_type_id ORDER BY id DESC LIMIT 0,$limit";
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
            $arrReturn[$row['id']] = $row;
        }
        return $arrReturn;
    } 
    function getProductRelated($cate_id, $product_id){
        $arrReturn = array();
        $sql = "SELECT * FROM product WHERE cate_id = $cate_id AND id <> $product_id ORDER BY id DESC LIMIT 0,10";
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
            $arrReturn[$row['id']] = $row;
        }
        return $arrReturn;
    }
    function getDetailProduct($id) {
        $arrReturn = array();      
        $sql = "SELECT * FROM product WHERE id = $id";
        $rs = mysql_query($sql) or die(mysql_error());
        $row =mysql_fetch_assoc($rs);        
        $arrReturn['data']= $row;

        $sql = "SELECT * FROM images WHERE object_id = $id AND object_type = 1";
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
            $arrReturn['images'][] = $row;
            $str_image.= $row['url'].";";            
        }
        
        $arrReturn['str_image'] = $str_image;                  
        return $arrReturn;
    }
    
    function getListProduct($cate_type_id,$cate_id,$manu_id,$is_available,$is_saleoff,$is_hot,$offset,$limit) {
        try{
            $arrReturn = array();
            $sql = "SELECT * FROM product WHERE (is_hot = $is_hot OR $is_hot = -1) ";                                   
            $sql.=" AND (cate_id = $cate_id OR $cate_id = -1) AND (cate_type_id = $cate_type_id OR $cate_type_id = -1) ";
            $sql.=" AND (is_saleoff = $is_saleoff OR $is_saleoff = -1) AND (manu_id = $manu_id OR $manu_id = -1) ";            
            $sql.=" AND hidden = 0 ORDER BY created_at DESC ";
            if ($limit > 0 && $offset >= 0)
                $sql .= " LIMIT $offset,$limit";            
            $rs = mysql_query($sql) or die(mysql_error());
            while($row = mysql_fetch_assoc($rs)){
               $arrReturn['data'][] = $row;
            }
            $arrReturn['total'] = mysql_num_rows($rs);        

        }catch(Exception $ex){            
            $arrLog = array('time'=>date('d-m-Y H:i:s'),'model'=> 'Product','function' => 'getListProduct' , 'error'=>$ex->getMessage(),'sql'=>$sql);
            $this->logError($arrLog);
        }
        return $arrReturn;
    }

    /* cate_type */
    function getListCateType(){
        $arrReturn = array();
        $sql = "SELECT * FROM cate_type WHERE hidden = 0 ";
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
            $arrReturn[] = $row;
        }
        return $arrReturn;
    }
    /* cate_type */
    function getListCateTypeMenu(){
        $arrReturn = array();
        $sql = "SELECT * FROM cate_type WHERE hidden = 0 AND is_menu = 1";
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
            $arrReturn[] = $row;
        }
        return $arrReturn;
    }
    function getDetailCateType($id) {
        $arrReturn = array();      
        $sql = "SELECT * FROM cate_type WHERE id = $id";
        $rs = mysql_query($sql) or die(mysql_error());
        $row =mysql_fetch_assoc($rs);
        $arrReturn = $row;           
        return $arrReturn;
    }   

    
    function getCateByCateType($cate_type_id) {
        $arrReturn = array();        
        $sql = "SELECT * FROM cate WHERE cate_type_id = $cate_type_id AND parent_id = 0";
        $rs = mysql_query($sql) or die(mysql_error());
        while($row =mysql_fetch_assoc($rs)){
            $arrReturn[$row['id']] =  $row;
            $rs1 = mysql_query("SELECT * FROM cate WHERE parent_id = ".$row['id']);
            while($row1 = mysql_fetch_assoc($rs1)){
                $arrReturn[$row['id']]['child'][$row1['id']] = $row1;                
                $rs2 = mysql_query("SELECT * FROM cate WHERE parent_id = ".$row1['id']);
                while($row2 = mysql_fetch_assoc($rs2)){                    
                    $arrReturn[$row['id']]['child'][$row1['id']]['child'][$row2['id']] = $row2;
                }
            }
        }      
        echo "<option value='0'>--chọn--</option>";
        if(!empty($arrReturn)){
            foreach ($arrReturn as $cate) {
                echo "<option value='".$cate['id']."'><b>".$cate['cate_name']."</b></option>";
                if(!empty($cate['child'])){
                    foreach ($cate['child'] as $cate1) {
                        echo "<option value='".$cate1['id']."'>".$cate['cate_name']." / ".$cate1['cate_name']."</option>";
                        if(!empty($cate1['child'])){
                            foreach ($cate1['child'] as $cate2) {
                                echo "<option value='".$cate2['id']."'>".$cate['cate_name']." / ".$cate1['cate_name']." / ".$cate2['cate_name']."</option>";
                                if(!empty($cate2['child'])){
                                    foreach ($cate2['child'] as $cate3) {
                                        echo "<option value='".$cate3['id']."'>--------------".$cate3['cate_name']."</option>";
                                    }
                                }
                            }
                        }
                    }                    
                }
            }
        }                
    }
    function getCateCap1ByCateType($cate_type_id) {
        $arrReturn = array();        
        $sql = "SELECT * FROM cate WHERE cate_type_id = $cate_type_id AND parent_id = 0";
        $rs = mysql_query($sql) or die(mysql_error());
        while($row =mysql_fetch_assoc($rs)){
            $arrReturn[$row['id']] =  $row;            
        }                           
        return $arrReturn;
    }
     function getCateCap1ByCateTypeMenu($cate_type_id) {
        $arrReturn = array();        
        $sql = "SELECT * FROM cate WHERE cate_type_id = $cate_type_id AND parent_id = 0 AND is_hot = 1";
        $rs = mysql_query($sql) or die(mysql_error());
        while($row =mysql_fetch_assoc($rs)){
            $arrReturn[$row['id']] =  $row;            
        }                   
        return $arrReturn;
    }
    function logError($arrLog){
        $time = date('d-m-Y H:i:s');
         ////put content to file
        $createdTime = date('Y/m/d');

        // path to log folder
        $logFolder = "../logs/errors/$createdTime";

        // If not existed => create it
        if (!is_dir($logFolder)) mkdir($logFolder, 0777, true);
        // path to log file
        $logFile = $logFolder . "/error_model.log";
        // Put content in it
        $fp   = fopen($logFile, 'a');
        fwrite($fp, json_encode($arrLog)."\r\n");
        fclose($fp);
    }
    function stripUnicode($str) {
        if (!$str)
            return false;
        $unicode = array(
            'a' => 'á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ',
            'A' => 'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
            'd' => 'đ',
            'D' => 'Đ',
            'e' => 'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
            'E' => 'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
            'i' => 'í|ì|ỉ|ĩ|ị',
            'I' => 'Í|Ì|Ỉ|Ĩ|Ị',
            'o' => 'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
            'O' => 'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
            'u' => 'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
            'U' => 'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
            'y' => 'ý|ỳ|ỷ|ỹ|ỵ',
            'Y' => 'Ý|Ỳ|Ỷ|Ỹ|Ỵ',
            '' => '?',
            '-' => '/'
        );
        foreach ($unicode as $khongdau => $codau) {
            $arr = explode("|", $codau);
            $str = str_replace($arr, $khongdau, $str);
        }
        return $str;
    }

    function phantrang($page, $page_show, $total_page, $link) {
        $dau = 1;
        $cuoi = 0;
        $dau = $page - floor($page_show / 2);
        if ($dau < 1)
            $dau = 1;
        $cuoi = $dau + $page_show;
        if ($cuoi > $total_page) {

            $cuoi = $total_page + 1;
            $dau = $cuoi - $page_show;
            if ($dau < 1)
                $dau = 1;
        }
        echo "<div id='thanhphantrang'>";
        if ($page > 1) {
            ($page == 1) ? $class = " class='selected'" : $class = "";
            echo "<a" . $class . " href=" . $link . ">Đầu</a>";
        }
        for ($i = $dau; $i < $cuoi; $i++) {
            ($page == $i) ? $class = " class='selected'" : $class = "";
            echo "<a" . $class . " href=" . $link . "?trang=$i>$i</a>";
        }
        if ($page < $total_page) {
            ($page == $total_page) ? $class = " class='selected'" : $class = "";
            echo "<a" . $class . " href=" . $link . "?trang=$total_page>Cuối</a>";
        }
        echo "</div>";
    }



    public function login($username,$password){
    
        $password = md5($password);
        $sql = "SELECT * FROM users WHERE username='$username' AND password ='$password'";
        $user = mysql_query($sql) or die(mysql_error());

        $row = mysql_num_rows($user);      
        if ($row == 1) {//success
            $chitiet = mysql_fetch_assoc($user);
            $_SESSION['user'] = $chitiet;            
            echo "success";exit();
        }
        else{
            echo "Tên đăng nhập hoặc mật khẩu không đúng.";exit();
        }            
    }


    function phantrang2($page,$page_show,$total_page,$link){
        $dau=1;
        $cuoi=0;
        $dau=$page - floor($page_show/2);
        if($dau<1) $dau=1;
        $cuoi=$dau+$page_show;
        if($cuoi>$total_page)
        {

            $cuoi=$total_page+1;
            $dau=$cuoi-$page_show;
            if($dau<1) $dau=1;
        }
        echo '<div class="pagination pagination__posts"><ul>';
        if($page > 1){
            ($page==1) ? $class = " class='active'" : $class="first" ;
            echo "<li ".$class."><a data-page='1' href='javascript:void(0)'>Trang đầu</a></li>" ;
        }
        for($i=$dau; $i<$cuoi; $i++)
        {
            ($page==$i) ? $class = " class='active'" : $class="inactive" ;
            echo "<li ".$class."><a data-page='".$i."' href='javascript:void(0)'>$i</a></li>";
        }
        if($page < $total_page) {
            ($page==$total_page) ? $class = "class='active'" : $class="last" ;
            echo "<li ".$class."><a data-page='".$total_page."' href='javascript:void(0)'>Trang cuối</a></li>";
        }
        echo "</ul></div>";
    }
    function smtpmailer($to, $from, $from_name, $subject, $body) {

        //ini_set('display_errors',1);
        global $error;
        $mail = new PHPMailer();
        $mail->IsSMTP();
        $mail->SMTPDebug = 1;
        $mail->SMTPAuth = true;
        $mail->SMTPSecure = 'ssl';
        $mail->Host = 'smtp.gmail.com';
        $mail->Port = 465;
        $mail->Username = GUSER;
        $mail->Password = GPWD;
        $mail->SetFrom($from, $from_name);
        $mail->Subject = $subject;
        $mail->Body = $body;
        $mail->CharSet="utf-8";
        $mail->IsHTML(true);
        $mail->AddAddress($to);
        //var_dump($mail->ErrorInfo);
        if(!$mail->Send()) {
            $error = 'Gởi mail bị lỗi : '.$mail->ErrorInfo;
            return false;
        } else {
            $error = 'Thư của bạn đã được gởi đi !';
            return true;
        }
    }
    function checkemailexist($email){
        $sql = "SELECT id FROM newsletter WHERE email = '$email' AND status = 1 ";
        $rs = mysql_query($sql) or die(mysql_error());
        $row = mysql_num_rows($rs);
        if($row==0){
            return "1";
        }else{
            return "0";
        }
    }

    function checkUsernameExist($username){
        $sql = "SELECT user_id FROM users WHERE username = '$username' AND status = 1 and role_id = 2 ";
        $rs = mysql_query($sql) or die(mysql_error());
        $row = mysql_num_rows($rs);
        if($row==0){
            return "1";
        }else{
            return "0";
        }
    }
    function checkEmailUsed($email){
        $sql = "SELECT user_id FROM users WHERE email = '$email' AND status = 1 and role_id = 2";
        $rs = mysql_query($sql) or die(mysql_error());
        $row = mysql_num_rows($rs);
        if($row==0){
            return "1";
        }else{
            return "0";
        }
    }
    function getListCity(){
        $arrReturn = array();
        $sql = "SELECT * FROM city WHERE status = 1";
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
            $arrReturn[] = $row;
        }
        return $arrReturn;
    }
    function insertUser($username,$password,$name,$email,$fullname,$address,$city,$phone,$company,$masothue){
         $time = time();
         $sql = "INSERT INTO users VALUES
                            (NULL,'$username','$password','$name',
                            '$email','$phone','$address',$city,'$company',
                            '$masothue',2,1,NULL,$time,$time)";
         $rs = mysql_query($sql) or die(mysql_error().$sql);
    }
    function getDetailUser($user_id){
        $sql = "SELECT user_id,username,fullname,display_name,city_id,company,tax_no,phone,email,address,last_login FROM users WHERE user_id = $user_id";
        $rs = mysql_query($sql);
        $row = mysql_fetch_assoc($rs);
        return $row;
    }
    /* order */

    function insertOrder($total_amount,$total_price,$fullname,$phone,$email,$address,$city_id,$company,$tax_no,$method_id,$note,$discount,$code_id,$total_pay,$customer_id){
        $time = time();
        $sql = "INSERT INTO orders VALUES(NULL, $total_amount,$total_price,'$fullname','$phone','$email','$address',$city_id,'$company','$tax_no',1,$time,
            $method_id,'$note','$discount',$code_id,$total_pay,$customer_id)";
        mysql_query($sql) or die(mysql_error());
        $order_id = mysql_insert_id();
        return $order_id;
    }
    function getListProductCate($parent_id=-1,$cate_id=-1,$giatu=-1,$giaden=-1,$age_range=-1,$hot=-1,$is_saleoff=-1,$is_new=-1,$offset = -1, $limit = -1) {
        try{
            $arrResult = array();
            $sql = "SELECT * FROM product WHERE (parent_cate = $parent_id OR $parent_id = -1) ";
            $sql.=" AND (cate_id = $cate_id OR $cate_id = -1) AND (age_range = $age_range OR $age_range = -1) ";
            $sql.=" AND (is_hot = $hot OR $hot = -1) AND (is_saleoff = $is_saleoff OR $is_saleoff = -1) ";
            $sql.=" AND (is_new = $is_new OR $is_new = -1) ";            

            if($giatu > -1 && $giaden > -1){                
                $sql.= " AND  (price BETWEEN $giatu AND $giaden)";
            }

            $sql.=" AND hidden = 0 ORDER BY created_at DESC ";
            if ($limit > 0 && $offset >= 0)
                $sql .= " LIMIT $offset,$limit";

            $rs = mysql_query($sql) or die(mysql_error());
            while($row = mysql_fetch_assoc($rs)){
               $arrResult['data'][] = $row;
            }            
            $arrResult['total'] = mysql_num_rows($rs);
            return $arrResult;
        }catch(Exception $ex){     
            $arrLog = array('time'=>date('d-m-Y H:i:s'),'model'=> 'FE','function' => 'getListProduct' , 'error'=>$ex->getMessage(),'sql'=>$sql);
            $this->logError($arrLog);
        }
    }
    function getDetailArticles($article_id){
        $sql = "SELECT * FROM articles WHERE article_id = $article_id";
        $rs = mysql_query($sql);
        $row = mysql_fetch_assoc($rs);
        return $row;
    }
    function getArticlesRelated($cate_id, $article_id,$offset,$limit){
        $arrReturn = array();
        $sql = "SELECT article_id,article_title,article_alias,image_url FROM articles WHERE cate_id = $cate_id AND article_id <> $article_id ORDER BY article_id DESC LIMIT $offset,$limit";
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
            $arrReturn[$row['article_id']] = $row;
        }
        return $arrReturn;
    }
    function getArticlesMostView($offset,$limit){
        $arrReturn = array();
        $sql = "SELECT article_id,article_title,article_alias,image_url FROM articles WHERE status = 1 ORDER BY RAND() LIMIT $offset,$limit";
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
            $arrReturn[$row['article_id']] = $row;
        }
        return $arrReturn;
    }
    function getProductDeal($offset,$limit){
        $arrReturn = array();
        $sql = "SELECT id,product_name,product_alias,image_url,price,price_old FROM product WHERE status = 1 AND is_deal = 1 ORDER BY RAND() LIMIT $offset,$limit";
        $rs = mysql_query($sql);
        while($row = mysql_fetch_assoc($rs)){
            $arrReturn[$row['id']] = $row;
        }
        return $arrReturn;
    }
}

?>
