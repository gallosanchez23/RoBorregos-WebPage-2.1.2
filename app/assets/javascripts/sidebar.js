$('#menu-toggle').click(function(e){
  e.preventDefault();
  $('#sidebar').toggleClass('toggled')
});

$(document).ready(function(){

  $('.sidebar-nav li:has(ul)').click(function(e){

    e.preventDefault();

    if ($(this).hasClass('active')){
      $(this).removeClass('active');
      $(this).children('ul').slideUp();
    }
    else{
      $('.sidebar-nav li ul').slideUp();
      $('.sidebar-nav li').removeClass('active');
      $(this).addClass('active');
      $(this).children('ul').slideDown();
    }

  });

});