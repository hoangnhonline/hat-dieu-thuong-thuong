<div class="main-content">
    <p class="title-content">
        Thư viện ảnh
    </p>
    <div class="col-md-12 container-gallery" id="content-gioithieu" >
      <div id="gallery-1" class="royalSlider rsDefault">
      <?php 
            $arrBanner = getListBannerByPosition(3);
          if(!empty($arrBanner)){
            $k = 0 ;
            foreach ($arrBanner as $value) {
              $k ++;
          ?>
        <a class="rsImg bugaga" 
        data-rsBigImg="<?php echo $value['image_url']; ?>" href="<?php echo $value['image_url']; ?>">    
        <img class="rsTmb" src="<?php echo $value['image_url']; ?>" alt="hinh anh <?php echo $k; ?>" />
        </a>    
        <?php }} ?>
      </div>
    </div>
  <div style="clear:both"></div>
</div>
  <script>
      jQuery(document).ready(function($) {
      $('#gallery-1').royalSlider({    
        controlNavigation: 'thumbnails',
        autoScaleSlider: true, 
        autoScaleSliderWidth: 960,     
        autoScaleSliderHeight: 850,
        loop: false,
        imageScaleMode: 'fit-if-smaller',
        navigateByClick: true,
        numImagesToPreload:2,
        arrowsNav:true,
        arrowsNavAutoHide: true,
        arrowsNavHideOnTouch: true,
        keyboardNavEnabled: true,
        fadeinLoadedSlide: true,
        globalCaption: true,
        globalCaptionInside: false,
        thumbs: {
          appendSpan: true,
          firstMargin: true,
          paddingBottom: 4
        }
      });
    });
</script>