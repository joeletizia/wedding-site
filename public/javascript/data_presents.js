function clearActiveNav(){
  $('.nav li').removeClass('active');
}

function setCurrentActiveNav(target){ 
  $('.' + target + '-nav').addClass('active');
}

$(document).ready(function() { 
  var elements = $('[data-presents]');
  $.each(elements, function(index, element){
    $(element).click(function(event){
      event.preventDefault();
      target = $(this).data("target");

      clearActiveNav();
      setCurrentActiveNav(target);

      $.get( "/" + target, function( data ) {
        $("#content").html( data );
      });
    });
  });
});

