$(document).ready(function(){
    var pp     = $("#pp"),
        bg     = $("#pp-bg");

    function pp_hide(pp, bg, btn){
        pp.animate({top: "-850px"}, 1000, function(){bg.fadeOut(1000);});
    }

    function pp_show(pp, bg, btn){
        pp.animate({top: "30px"}, 2000);
        bg.fadeIn(1000).click(function(){pp_hide(pp, bg)});
    }

    pp_show(pp, bg);
});
