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
    url:"articles",
    dataType:"script",
    data: {categories: categories},
  })
}
