$(window).on("scroll",function(){
  var height = parseInt($("#header").css("height"), 10);
  var value = Math.round($(window).scrollTop());
  if (value >= height) {
    $("#profile-navbar").addClass("navbar-fixed-top");
    $("#profile-navbar").css("margin-top", "54px");
    $("#content").css("padding-top", "200px");
    $("#profile-navbar-picture img").css("margin-top", "-11px");
    $("#profile-navbar-picture img").css("width", "70px");
    $("#profile-navbar-picture img").css("height", "70px");
    $("#profile-navbar-picture img").css("position", "fixed");
  } else {
    $("#profile-navbar").removeClass("navbar-fixed-top");
    $("#profile-navbar").css("margin-top", "0px");
    $("#content").css("padding-top", "54px");
    $("#profile-navbar-picture img").css("margin-top", "-125px");
    $("#profile-navbar-picture img").css("width", "200px");
    $("#profile-navbar-picture img").css("height", "200px");
    $("#profile-navbar-picture img").css("position", "absolute");
  }
});

