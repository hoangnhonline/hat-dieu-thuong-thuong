<?php
require_once "model/Backend.php";
$model = new Backend;
$link = "index.php?mod=product&act=list";

if (isset($_GET['category_id']) && $_GET['category_id'] > -1) {
    $category_id = (int) $_GET['category_id'];      
    $link.="&category_id=$category_id";
} else {
    $category_id = -1;
}
$arrList = $model->getListProduct($category_id);
$arrCate = $model->getListCategory();
?>
<div class="row">
    <div class="col-md-12">
        
        <button class="btn btn-primary btn-sm right" onclick="location.href='index.php?mod=product&act=form'">Tạo mới</button>
        <div class="box-header">
            <h3 class="box-title">Danh sách SP</h3>
        </div><!-- /.box-header -->
        <div class="box">
           <div class="box_search">
                <form method="get" id="form_search" name="form_search">
                     <input type="hidden" name="mod" value="product" />
                    <input type="hidden" name="act" value="list" />
                    Loại sản phẩm
                    <select name="category_id" id="category_id" style="width:200px !important;height:25px;">
                        <option value="-1">Tất cả</option>
                        <?php if(!empty($arrCate)){ 
                            foreach ($arrCate as $cate) {                                          
                            ?>
                        <option 
                        <?php if($category_id==$cate['id']) echo "selected" ; ?>
                        value="<?php echo $cate['id']?>"><?php echo $cate['name']; ?></option>
                        <?php }} ?>
                        
                    </select>                     
                </form>
            </div>
            <div class="box-body">
                <table class="table table-bordered table-striped" id="tbl_list">
                    <thead>
                        <tr>
                            <th width="1%">STT</th>                            
                            <th width="30%">Ten SP</th>
                            <th width="20%">Ảnh</th>                        
                            <th width="1%" style="white-space:nowrap">Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php

                        $i = 0;

                        if(!empty($arrList)){                   

                        foreach($arrList as $product){

                        $i++;                                                
                        ?>
                        <tr id="row-<?php echo $product['id']; ?>">
                            <td style="width:1%"><span class="order"><?php echo $i; ?></span></td>                            
                            <td>
                                <a href="index.php?mod=product&act=form&id=<?php echo $product['id']; ?>">
                                    <?php echo $product['name']; ?>
                                </a>
                                
                            </td>
                            <td>
                                <?php $url_image = ($product['image_url']) ? "../".$product['image_url'] : STATIC_URL."img/no_image.jpg"; ?>
                                <img class="thumbnail" src="<?php echo $url_image; ?>" height="150" />
                            </td>                            
                           
                        

                            <td style="white-space:nowrap">
                            
                                <a href="index.php?mod=product&act=form&id=<?php echo $product['id']; ?>" title="Click để chỉnh sửa">
                                    <i class="fa fa-fw fa-edit"></i>
                                </a>
                                <a title="Click để xóa" href="javascript:;" alias="<?php echo $product['name']; ?>" id="<?php echo $product['id']; ?>" mod="product" class="link_delete" >    
                                    <i class="fa fa-fw fa-trash-o"></i>
                                </a>
                            </td>
                        </tr> 
                        <?php } }else{ ?>   
                        <tr>
                            <td colspan="8" class="error_data">Không tìm thấy dữ liệu!</td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div><!-- /.box-body -->
            <div class="box-footer clearfix"></div>

        </div><!-- /.box -->                           

    </div><!-- /.col -->
</div>
<script type="text/javascript">
    $(function(){
        $('#category_id').change(function(){
            $('#form_search').submit();
        });
        $('#tbl_list tbody').sortable({
            handle: ".dragHandle",
            sort: function(e) {
              
            },
            axis: "y",
            update: function() {
                var rows = $('#tbl_list tbody tr');
                var strOrder = '';
                var strTemp = '';
                for (var i=0; i<rows.length; i++) {
                    strTemp = rows[i].id;
                    strOrder += strTemp.replace('row-','') + ";";
                }      

                $.ajax({
                    url: "ajax/process.php",
                    type: "POST",
                    async: false,
                    data: {
                        'action' : 'updateOrderProduct',
                        'str_id_order' : strOrder
                    },
                    success: function(data){
                        var countRow = $('#tbl_list tbody span.order').length;
                        for(var i = 0 ; i < countRow ; i ++ ){
                            $('span.order').eq(i).html(i+1);
                        }
                        $('#tbl_list tbody img.thumbnail').show();        
                    }
                }); 
            }
        }).disableSelection();  
    });
</script>