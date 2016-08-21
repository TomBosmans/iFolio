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
  $('#article-content').scrollspy({ target: '#navbar-article' })
}

$(document).on('turbolinks:load', function() {
  initialiceMasonry();
  initialiceScrollspy();
});
