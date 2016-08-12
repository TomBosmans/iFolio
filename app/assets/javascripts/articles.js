// Using Masonry on articles
$(document).on('turbolinks:load', function() {
  initialiceMasonry();
});

function initialiceMasonry(){
    $(function() {
    $('#articles').masonry({
      itemSelector: '.box',
      isFitWidth: true
    });
  });
}