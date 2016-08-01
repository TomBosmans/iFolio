// Switching between Profile and Navbar
$(window).on("scroll",function(){
  var height = parseInt($("#header").css("height"), 10);
  var value = Math.round($(window).scrollTop());
  if (value >= height) {
    $("#header-content").addClass("hidden");
    $("#navbar").removeClass("hidden");
    $("#content").css("padding-top", "75px");
  } else {
    $("#header-content").removeClass("hidden");
    $("#navbar").addClass("hidden");
    $("#content").css("padding-top", "0px");
  }
});