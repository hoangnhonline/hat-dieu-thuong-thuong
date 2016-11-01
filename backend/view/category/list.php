<?php
require_once "model/Backend.php";
$model = new Backend;
$link = "index.php?mod=category&act=list";

$arrList = $model->getListCategory();

?>
<div class="row">
    <div class="col-md-12">
        
        <button class="btn btn-primary btn-sm right" onclick="location.href='index.php?mod=category&act=form'">Tạo mới</button>
        <div class="box-header">
            <h3 class="box-title">Danh sách thương hiệu</h3>
        </div><!-- /.box-header -->
        <div class="box">
           
            <div class="box-body">
                <table class="table table-bordered table-striped" id="tbl_list">
                    <thead>
                        <tr>
                            <th width="1%">STT</th>
                            <th width="1%" style="white-space:nowrap">Sắp xếp</th>
                            <th width="30%">Thương hiệu</th>
                            <th width="20%">Ảnh</th>                        
                            <th width="1%" style="white-space:nowrap">Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php

                        $i = 0;

                        if(!empty($arrList)){                   

                        foreach($arrList as $category){

                        $i++;                                                
                        ?>
                        <tr id="row-<?php echo $category['id']; ?>">
                            <td style="width:1%"><span class="order"><?php echo $i; ?></span></td>
                            <td style="width:1%"><img src="img/drag.png" class="dragHandle" /></td>
                            <td>
                                <a href="index.php?mod=category&act=form&id=<?php echo $category['id']; ?>">
                                    <?php echo $category['name']; ?>
                                </a>
                                
                            </td>
                            <td>
                                <?php $url_image = ($category['image_url']) ? "../".$category['image_url'] : STATIC_URL."img/no_image.jpg"; ?>
                                <img class="thumbnail" src="<?php echo $url_image; ?>" height="150" />
                            </td>                            
                           
                        

                            <td style="white-space:nowrap">
                            
                                <a href="index.php?mod=category&act=form&id=<?php echo $category['id']; ?>" title="Click để chỉnh sửa">
                                    <i class="fa fa-fw fa-edit"></i>
                                </a>
                                <a title="Click để xóa" href="javascript:;" alias="<?php echo $category['name']; ?>" id="<?php echo $category['id']; ?>" mod="category" class="link_delete" >    
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
        $('#is_hot,#hidden,#cate_type_id').change(function(){
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
                        'action' : 'updateOrderCategory',
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