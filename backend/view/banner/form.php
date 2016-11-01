<?php 
require_once "model/Backend.php";
$model = new Backend;

$link = "index.php?mod=banner&act=list";
$data = array();
$position_id = (int) $_GET['id'];
if(isset($_GET['id'])){

    $id = (int) $_GET['id'];

    require_once "model/Backend.php";

    $model = new Backend;

    $data = $model->getDetailBanner($id);           
}
?>
<div class="row">
    <div class="col-md-12">
        <button class="btn btn-primary btn-sm" onclick="location.href='index.php?mod=banner&act=list&position_id=<?php echo $position_id; ?>'">Back</button>
        <form method="post"  action="controller/Banner.php" enctype="multipart/form-data">
            <input type="hidden" name="position_id" value="<?php echo $position_id; ?>"/>
            <input type="hidden" name="name" value="<?php echo $_GET['name']; ?>"/>
        <div class="col-md-9">

            <!-- Custom Tabs -->

            <div style="clear:both;margin-bottom:10px"></div>

            <div class="box-header">

                <h3 class="box-title">Thêm ảnh : <?php echo $_GET['name'];?></h3>               

            </div><!-- /.box-header -->

            <div class="nav-tabs-custom">

                <div class="button">                    

                    <div class="row">
                            
                        <div class="col-md-12" >
                            <div class="form-group">                                
                                <input type="file" name="image_url_1" class="form-control" />
                            </div>  
                            <div class="form-group">                                
                                <input type="file" name="image_url_2" class="form-control" />
                            </div>  
                            <div class="form-group">                                
                                <input type="file" name="image_url_3" class="form-control" />
                            </div>  
                            <div class="form-group">                                
                                <input type="file" name="image_url_4" class="form-control" />
                            </div>  
                            <div class="form-group">                                
                                <input type="file" name="image_url_5" class="form-control " />
                            </div>  
                        </div>                   
                    </div>               
                </div>
                 <div class="button">
                    <button class="btn btn-primary btnSave" type="submit">Save</button>
                    <button class="btn btn-primary" type="button" onclick="location.href='index.php?mod=banner&act=list&id=<?php echo $position_id; ?>&name=<?php echo $_GET['name']; ?>'">Cancel</button>
                </div>
            </div><!-- nav-tabs-custom -->

        </div><!-- /.col -->       

       
        </form>
    </div>
</div>