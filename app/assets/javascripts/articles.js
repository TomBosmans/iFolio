// Using Masonry on articles
function initialiceMasonry(){
  $(function() {
    $('#articles').masonry({
      itemSelector: '.box',
      isFitWidth: true
    });
  });
}

function initialiceScrollspy(){
  var headers = $('#article-content h1').get();
  for (var i = 0; i < headers.length; i++) {
    var id = "header-"+i
    headers[i].setAttribute("id", id);
    $("#navbar-article ul").append('<li class="nav-item"><a class="nav-link" href="#'+id+'" data-turbolinks="false">'+ headers[i].innerHTML +'</a></li>');
  }
  
   $('#article-content').scrollspy({ target: '#navbar-article' })
}

function initialiceLightbox(){
  $('#article-content img').each(function(){
    $(this).wrap( '<a data-lightbox="article-images" href='+ $(this).attr("src") +'></a>' );
});
}

$(document).on('turbolinks:load', function() {
  initialiceMasonry();
  initialiceScrollspy();
  initialiceLightbox();
});
