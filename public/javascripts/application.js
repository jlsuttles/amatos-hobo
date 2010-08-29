// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $('a[rel=external]').click(function() {
    var newWindow = window.open($(this).attr('href'), '_blank');
    if(newWindow) { if(newWindow.focus) { newWindow.focus(); return false; } }
    newWindow = null;
  });
  
  $('#photos img:gt(0)').hide();
  setInterval(function(){ $('#photo :first-child').fadeOut().next('img').fadeIn(350).end().appendTo('#photo'); }, 3500);
});