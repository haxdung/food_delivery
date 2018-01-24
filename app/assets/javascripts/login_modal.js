$("#signup-button").on("click",function () {
    $("#login-login").removeClass().addClass("tab-pane fade");
    $("#signup-login").removeClass().addClass("tab-pane fade active in");
    $("#loginModal .nav-tabs li").prev().removeClass();
    $("#loginModal .nav-tabs li").last().removeClass().addClass("active");
})
$("#login-button").on("click", function() {
    $("#login-login").removeClass().addClass("tab-pane fade active in");
    $("#signup-login").removeClass().addClass("tab-pane fade");
    $("#loginModal .nav-tabs li").prev().removeClass().addClass("active");
    $("#loginModal .nav-tabs li").last().removeClass();
})
