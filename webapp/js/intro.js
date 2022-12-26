var sec = $('#snb').find('li');
console.log('메뉴 li갯수 : ' + sec.length);

var i;
function sec_menu(num) {
    for(i=0;i<sec.length;i++){
        if(num == i){
            sec.eq(i).addClass('active');
            $('.tab_content_0'+i).show();
        }else{
            sec.eq(i).removeClass('active');
            $('.tab_content_0'+i).hide();
        }
    }
}

$(function(){

    function options(delay){
      return {
        distance: '30px',
        origin: 'bottom',
        opacity: 0,
        easing: 'cubic-bezier(0.9, 0, 0, 0)',
        duration: 800,
        delay,
        beforeReveal: function (el) {
          var $roll_el = $(el).find('[data-roll]')
          if($roll_el.length){

            var od = new Odometer({
              el: $roll_el[0],
              value: 0,
              duration: 500
            })

            setTimeout(function(){od.update(parseInt($roll_el.data('roll'))) }, delay+ 250)
          }
        }
      }
    }

    // function options2(delay){
    //     return {
    //       distance: '30px',
    //       origin: 'bottom',
    //       opacity: 0,
    //       easing: 'cubic-bezier(0.9, 0, 0, 0)',
    //       duration: 800,
    //       delay,
    //       reset: true,
    //       beforeReveal: function (el) {
    //         var $roll_el = $(el).find('[data-roll]')
    //         if($roll_el.length){
  
    //           var od = new Odometer({
    //             el: $roll_el[0],
    //             value: 0,
    //             duration: 500
    //           })
  
    //           setTimeout(function(){od.update(parseInt($roll_el.data('roll'))) }, delay+ 250)
    //         }
    //       }
    //     }
    //   }

    ScrollReveal().reveal($('.sec_01 div h2'), options(0))
    ScrollReveal().reveal($('.sec_01 div p'), options(250))
    ScrollReveal().reveal($('.sec_01 div button'), options(700))

    // ScrollReveal().reveal($('.sec_06 .sec_pj h3'), options2(0))
    // ScrollReveal().reveal($('.sec_06 .sec_pj p'), options2(250))
    // ScrollReveal().reveal($('.sec_06 .sec_pj button'), options2(700))

    // ScrollReveal().reveal($('.sec_06  .sec_num ul li:nth-child(1)'), options2(700))
    // ScrollReveal().reveal($('.sec_06  .sec_num ul li:nth-child(2)'), options2(1200))
    // ScrollReveal().reveal($('.sec_06  .sec_num ul li:nth-child(3)'), options2(1700))
})