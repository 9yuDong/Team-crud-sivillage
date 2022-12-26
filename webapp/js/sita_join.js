$('document').ready(function(){
    // 체크박스 전체선택
    $('#check_all').on('click',function(){
        $('.ck').prop('checked',this.checked);
    });
    
    //한영선택메뉴
    $('.sub_menu_top').css('display','none');
    $('.menu_top').on('click',function(){
        $('.sub_menu_top').stop().toggle();
        $('.menu_top img').css({transform:'rotate(-90deg)'});
    });
    $('.sub_menu_bottom').css('display','none');
    $('.menu_bottom').on('click',function(){
        $('.sub_menu_bottom').stop().toggle();
    });

    // 비밀번호 확인
    $('#alert_wrong').css({visibility:'hidden'});
    $('#password_c').keyup(function(){
        var pwd1=$('#password').val();
        var pwd2=$('#password_c').val();
        if(pwd1==pwd2) {
            $("#alert_wrong").css({visibility:'hidden'});
        }else {
            $("#alert_wrong").css({visibility:'visible'});
        }
    });
    // 비밀번호 글자수 
    $('#alert_num').css({visibility:'hidden'});
    $('#password').keyup(function(){
        var pwd1=$('#password').val();
        var pwd2=$('#password_c').val();
        if(pwd1.length<10||pwd1.length>16)
        {
            $("#alert_num").css({visibility:'visible'});
        }else {
            $("#alert_num").css({visibility:'hidden'});
        }
    })

    // 태블릿~모바일화면 햄버거버튼
    $('#menuicon').on('click',function(){
        $('.mobile_gnb').animate({width:"toggle"},200);
        $('.gnb2').animate({width:"toggle"},200);
    });
});
