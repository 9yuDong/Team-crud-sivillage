
/* gnb 2뎁스 */
$(document).ready(function(){
    $('.ul_first li').mouseenter(function(){
        $(this).children('.ul_second').stop().show();
    });
    $('.ul_first li').mouseleave(function(){
        $(this).find('.ul_second:visible').stop().hide();
    }); 
});

/* gnb 메뉴 색상 변경 */
$(document).ready(function(){
    $('.ul_first li').mouseover(function(){
        $(this).css({'color':'black', "font-weight":"bold"});
    });
    $('.ul_first li').mouseout(function(){
        $(this).css({'color':'#929292', "font-weight":"500"});
    }); 
});