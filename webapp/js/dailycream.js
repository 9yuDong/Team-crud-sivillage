function count(type) {
    const resultElement = document.getElementById('result');
    let number = resultElement.innerText;

    if(type === 'plus') {
        number = parseInt(number) + 1;
    }else if(type === 'minus') {
        number = parseInt(number) - 1;
    }
    
    if(number<=0) {
        number=1;
    }
    resultElement.innerText = number;

    const price = document.getElementById('price');
    let a = price.innerText;
    if(type === 'plus') {
        a = parseInt(number) * 18000;
    }else if(type === 'minus'){
        a = a - 18000;
    }

    if(a<=0) {
        a=18000;
    }

    price.innerText = a;
}

$(document).ready(function(){
    // 각 항목 열기/닫기
    $('.p01').on('click',function(){
        $('.product_page').css({opacity:0.5});
        $('.h01').show();
    });

    $('.p02').on('click',function(){
        $('.product_page').css({opacity:0.5});
        $('.h02').show();
    });

    $('.p03').on('click',function(){
        $('.product_page').css({opacity:0.5});
        $('.h03').show();
    });

    $('.p04').on('click',function(){
        $('.product_page').css({opacity:0.5});
        $('.h04').show();
    });
    
    $('.x').on('click',function(){
        $('.hidden').hide();
        $('.product_page').css({opacity:1});
    });
});