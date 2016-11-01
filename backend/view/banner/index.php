<?php
require_once "model/Backend.php";
$model = new Backend;
$link = "index.php?mod=category&act=list";

$arrList = $model->getListCategory();

?>
<div class="row">
    <div class="col-md-12">               
        <div class="box-header">
            <h3 class="box-title">Danh sách album</h3>
        </div><!-- /.box-header -->
        <div class="box">
           
            <div class="box-body">
                <table class="table table-bordered table-striped" id="tbl_list">
                    <thead>
                        <tr>
                            <th width="1%">STT</th>
                            <th width="50%" style="white-space:nowrap">Album</th>                                                   
                            <th width="10%" style="white-space:nowrap">Hình ảnh</th>
                        </tr>
                    </thead>
                    <tbody>
                      
                        <tr>
                            <td style="width:1%"><span class="order">1</span></td>                            
                            <td>
                                <a href="index.php?mod=banner&act=list&id=1&name=Slideshow trang chủ">
                                    Slideshow trang chủ
                                </a>                                
                            </td>
                            <td style="white-space:nowrap">
                            
                                <a href="index.php?mod=banner&act=list&id=1&name=Slideshow trang chủ" title="Click để chỉnh sửa">
                                   <img src="img/hinh-anh.png" title="Hinh anh"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:1%"><span class="order">2</span></td>                            
                            <td>
                                <a href="index.php?mod=banner&act=list&id=2&name=Block hình ảnh trang chủ">
                                    Block hình ảnh trang chủ
                                </a>                                
                            </td>
                            <td style="white-space:nowrap">
                            
                                <a href="index.php?mod=banner&act=list&id=2&name=Block hình ảnh trang chủ" title="Click để chỉnh sửa">
                                   <img src="img/hinh-anh.png" title="Hinh anh"/>
                                </a>
                            </td>
                        </tr>  
                        <tr>
                            <td style="width:1%"><span class="order">3</span></td>                            
                            <td>
                                <a href="index.php?mod=banner&act=list&id=3&name=Thư viện ảnh">
                                    Thư viện ảnh
                                </a>                                
                            </td>
                            <td style="white-space:nowrap">
                            
                                <a href="index.php?mod=banner&act=list&id=3&name=Thư viện ảnh" title="Click để chỉnh sửa">
                                   <img src="img/hinh-anh.png" title="Hinh anh"/>
                                </a>
                            </td>
                        </tr> 
                        
                    </tbody>
                </table>
            </div><!-- /.box-body -->
            <div class="box-footer clearfix"></div>

        </div><!-- /.box -->                           

    </div><!-- /.col -->
</div>