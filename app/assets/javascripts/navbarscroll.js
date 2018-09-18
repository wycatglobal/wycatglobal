$(document).ready(function(){
  var scrollTop = 0;
  $(window).scroll(function(){
    scrollTop = $(window).scrollTop();
     $('.counter').html(scrollTop);
    
    if (scrollTop >= 40) {
      $('#global-nav').addClass('scrolled-nav');
    } else if (scrollTop < 40) {
      $('#global-nav').removeClass('scrolled-nav');
    } 
    
  }); 
  
});