$(function() {
  $("#profiles th a, #profiles .pagination a").delegate("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#profiles_search input").keyup(function() {
    $.get($("#profiles_search").attr("action"), $("#profiles_search").serialize(), null, "script");
    return false;
  });
});