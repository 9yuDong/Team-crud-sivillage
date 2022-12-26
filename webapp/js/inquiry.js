// 탭메뉴
var tab = $('.board_list_h').find('li');
var i;
function tab_menu(num) {
    for(i=0; i<tab.length; i++){
        if(num == i){

            tab.eq(i).addClass('on');          
            $('.board_table_0'+i).show();
        }else{
            tab.eq(i).removeClass('on');
            $('.board_table_0'+i).hide();
        }
    }
}

$('.faq_btn').click(function(){
    alert("로그인이 필요한 서비스입니다.")
});
// 
$('.toggle_faq').click(function(){
    $(this).next().toggle();
}); 

// 질문 검색창 클릭시 자주질문 나오게 하기
$('.faq_input').click(function(){
   $('.faq_layer').addClass('show');

return false;
});

// 다른 곳 클릭시 다시 사라지게 하기
$(document).click(function(e){
    if(e.target.className =="show"){return false} 
    	$(".faq_layer").stop().removeClass('show');
     }
);

 
