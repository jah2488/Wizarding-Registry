# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  
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