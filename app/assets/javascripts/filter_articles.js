$(document).on('turbolinks:load', function() {
  $("input[id*='category_filter_']").change(function() {
    var checked = [];
    $('input', $('#category_filters')).each(function () {
      if($(this).is(":checked")) {
        checked.push($(this).val());
      }
    })
    filterArticles(checked)
  });
});

function filterArticles(categories){
  $.ajax({
    type:"GET",
    dataType:"script",
    url: window.location.href,
    data: {categories: categories},
  })
}
