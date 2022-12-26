$(document).ready(function(){
    /* scrollTo 플러그인 사용 */
    $('.gnb a').click(function(e){
        e.preventDefault();
        // scrollTo(링크될 # | Y축픽셀값, 애니메이션 시간)
       $(window).scrollTo(this.hash || 0,500);
    });
    
    /* 스크롤 100px이상 되었을 때 TOP 버튼 나오도록 코딩 */
    var sa = 100;
    $(window).scroll(function(){
        var num = $(window).scrollTop();
        if(num>sa){
            $('aside div').fadeIn();
        }else{
            $('aside div').fadeOut();
        }
     });

     /* animate 부드러운 스크롤탑 이동 */
     $('.top').click(function(e){
        e.preventDefault();
        $('html,body').stop().animate({scrollTop:0},800,'swing')
     });
});