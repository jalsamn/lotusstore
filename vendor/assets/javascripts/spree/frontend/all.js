// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require spree/frontend
//= require spree/frontend/spree_deliverymanager
//= require_tree .

$(document).ready(function(){
  $('.flexslider').flexslider({
    controlNav: false,
    directionNav: false,
    animation: "fade"
  });
  $('body').addClass('full').removeClass('half');
  $(window).scroll(function(){
    var sticky = $('.header'),
    scroll = $(window).scrollTop();
    if (scroll >= 1){
      sticky.addClass('header-fixed');
      $('body').addClass('half').removeClass('full');
    }else{
      sticky.removeClass('header-fixed');
      $('body').addClass('full').removeClass('half');
   }
 });
});
//= require spree/frontend/spree_sanebackyard
