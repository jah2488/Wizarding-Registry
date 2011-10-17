# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  
  $('.slide-text').hide()

  flash = $('.flash')
  if flash.length > 0
    flash.show().animate({height: flash.outerHeight()}, 200)
    
    `window.setTimeout(function() {
      flash.slideUp();
    }, 5000);`
    
  `(function($) {
    rotate = function(node,itemCount) {
      setTimeout(function() {
        if(itemCount == node) {
          var next = 1; 
        } else {
          var next = node+1;
        }
        
        if(node == 1) {
          var prev = itemCount; 
        } else {
          var prev = node-1;
        }
        $('.text-container div:nth-child('+prev+')').hide();
        $('.text-container div:nth-child('+node+')').fadeIn(800);
        rotate(next,itemCount);
      },3000);
    }
  })(jQuery);
  $(document).ready(function() {
    rotate(2,$('.text-container > div').length);
  });`


  $('.log-in').hide()
  $('.sign-up').hide()

  $('#login-js').click ->
    $('.sign-up').hide()
    $('.log-in').fadeIn(400)
    return

  $('#signup-js').click ->
    $('.log-in').hide()
    $('.sign-up').fadeIn(400)
    return

  return