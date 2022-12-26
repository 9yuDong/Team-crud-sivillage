$(document).ready(function(){
    $('.customer_ask2').hide();
    $('.customer_ask').on('click',function(){
        $(this).next().slideToggle(200);
    });
});