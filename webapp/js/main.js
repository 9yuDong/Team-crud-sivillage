// ===== Header GNB 메뉴 =====
// 슬라이딩
$('.innovate a').mouseenter(function(){
    $('.menu_hover').slideDown();
    $('.tab_innovate').css('display','block');
    $('.tab_involve').css('display','none');
});
$('header').mouseleave(function(){
    $('.menu_hover').slideUp();
});
$('.involve a').mouseenter(function(){
    $('.menu_hover').slideDown();
    $('.tab_involve').css('display','block');
    $('.tab_innovate').css('display','none');
});
// 메뉴단 색상 변경

// ===== 헤더 | 한국어 클릭시, 언어설정 나오게 ==========
$('.lang').click(function(){
    $('.lang>ul>li').next().toggle();
});

// ===== 푸터 | 한국어 클릭시, 언어설정 나오게 =====
$('.footer_info>.lang2').click(function(){
    $('.lang2>dd').toggle();
});

// ===== 헤더 | 클릭하면 방향 아이콘 바꾸기
$('.lang').click(function(){
    if($('.icon_display').css("display") == "none"){
        $('.icon_change').html('한국어&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-down" aria-hidden="true">')
    }else{
        $('.icon_change').html('한국어&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-up" aria-hidden="true">')
    }
});
// ===== 푸터 | 클릭하면 방향 아이콘 바꾸기
$('.lang2').click(function(){
    if($('.icon_fdisplay').css("display") == "none"){
        $('.icon_fchange').html('한국어&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-down" aria-hidden="true">')
    }else{
        $('.icon_fchange').html('한국어&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-up" aria-hidden="true">')
    }
});


// ===== 스와이퍼 JS 코딩 =====
var swiper = new Swiper('.swiper-container', {
    /* a. 슬라이드 보이는 갯수 */
    slidesPerView: 3, 
    /* b. 슬라이드 사이 간격 */
    spaceBetween: '2%',
    /* c. 슬라이드 반복 여부 */
    loop: true,
    /* d. 그룹 수 맞추기 => 안 맞을 경우 빈칸으로 채우기 여부 */
    loopFillGroupWidthBlank: true,
    /* e. 활성 슬라이드 항상 가운데 배치하기 */
    // centeredSlides: true,

    // 네비게이션 좌우화살표
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    }
});


// 로딩시 컨텐츠 정보 텍스트 플러그인
$(function(){

    function options(delay){
      return {
        distance: '30px',
        origin: 'bottom',
        opacity: 0,
        easing: 'cubic-bezier(0.9, 0, 0, 0)',
        duration: 800,
        delay
      }
    }

    ScrollReveal().reveal($('.h3'), options(0));
    ScrollReveal().reveal($('.h4'), options(250));
    ScrollReveal().reveal($('.p'), options(700));
})

