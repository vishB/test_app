// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require fancybox
//= require jquery-fileupload
//= require jquery.cycle.all
//= require twitter/bootstrap
//= require_tree .



 $(document).ready(function() {
      $(".fancybox").fancybox();
      
      
        $("#hand").click(function(){
         if($("#check6").is(':visible'))
         {
          $("#check6").hide();
          }
         else
         {
          $("#check6").show();
          }
        });
    
        
        setTimeout(function() {
    $('#test').fadeOut('slow');
}, 3000); // <-- time in milliseconds

  $( "#addphoto" ).tooltip({
  show: null,
  position: {
  my: "left top",
  at: "left bottom"
  },
  open: function( event, ui ) {
  ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
  }
  });
  
  
  $( "#clickme" ).tooltip({
  show: null,
  position: {
  my: "left top",
  at: "left bottom"
  },
  open: function( event, ui ) {
  ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
  }
  });
  
  
  $( ".zip" ).tooltip({
  show: null,
  position: {
  my: "left top",
  at: "left bottom"
  },
  open: function( event, ui ) {
  ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
  }
  });
    
  $(".album-link").click(function(){
    $(this).parent().css('background-color','#2590B9');
  });
    
    
  $('.tilt').hover(function(){
  $(this).find('.tools').fadeIn("slow");
  }, function(){
    $(this).find('.tools').fadeOut();
  });
  
  $('.album-thumb').hover(function(){
  $(this).find('.tools').fadeIn("slow");
  }, function(){
    $(this).find('.tools').fadeOut();
  });
  
  
    
 });
 
