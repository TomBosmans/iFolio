// Using Masonry on articles
$(document).on('turbolinks:load', function() {
  $(function() {
    $('#articles').masonry({
      itemSelector: '.box',
      isFitWidth: true
    });
  });
});