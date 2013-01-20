$(document).ready(function(){

  $('.del-post').bind('ajax:success', function() {
      $(this).closest('tr').fadeOut();
  });

});
