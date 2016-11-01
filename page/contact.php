<div class="main-content">
    <p class="title-content">
        Liên hệ
    </p>
<div class="contact-form">
        <form action='ajax/contact.php' method="post" id="contactForm">
        <h2>Vui lòng điền thông tin dưới đây để liên hệ với chúng tôi:</h2>
         
                       <br />
            <div class="col-md-6">
              <div class="form-group">
                <label>Họ tên</label>
                <input type="text" class="form-control" name="full_name" id="full_name" aria-required="true" required="required" />
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Điện thoại</label>
                <input type="text" class="form-control" name="phone" id="phone" aria-required="true" required="required" />
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Email</label>
                <input type="email" class="form-control" name="email" id="email" aria-required="true" required="required"/>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Địa chỉ</label>
                <input type="text" class="form-control" name="address" id="address" />
              </div>
            </div>   
            <div class="col-md-12" style="margin-left:15px;">
         
                <div class="form-group" style="padding-right:30px;">
                  <label>Nội dung</label>
                  <textarea class="form-control" rows="5" name="content" id="content" aria-required="true" required="required"></textarea>
                </div>
                
            </div>  
            <div class="col-md-12"  style="margin-left:15px;">
              <input class="btn btn-danger" value="Send" type="submit" />
            </div>            
                                
          </form>   
      </div>
    <div style="padding:10px;clear:both" >
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d979.8896064712557!2d106.64830699999999!3d10.768474999999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752e95b8a8a127%3A0x33dbab4361756bc!2zNjEgMTAwIELDrG5oIFRo4bubaSwgcGjGsOG7nW5nIDE0LCBRdeG6rW4gMTEsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1434088196528" width="98%" height="370" frameborder="0" style="border:0"></iframe>   
      <div style="clear:both"></div>
      
      <div style="clear:both"></div>
    </div>
</div>
<script type="text/javascript" src="js/validate.js"></script>
<script type="text/javascript" src="js/form.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweet.css">
<script type="text/javascript" src="js/sweet.js"></script>
<script type="text/javascript">
  $(function(){
    $('#contactForm').validate();
    $('#contactForm').ajaxForm({
            beforeSend: function() {                
            },
            uploadProgress: function(event, position, total, percentComplete) {              
            },
            complete: function(data) {  
              console.log(data);
              if($.trim(data.responseText)=='success'){           
                swal({   
                  title: "OK",   
                  text: "Gửi thông tin liên hệ thành công",   
                  type: "success",                
                  confirmButtonText: "OK",  
                   closeOnConfirm: false }, 
                   function(){   
                    window.location.reload();
                  });
                
              }else{    
                  swal('Error','Có lỗi xảy ra!','error');
                  $('#btnReset').click();
              }
            }
        });
    });
</script>
