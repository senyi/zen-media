$(document).ready(function() {
  scrollSpyAddClass('id','Q-menu','fixed', false, 0, true);
  scrollSpyRemoveClass('class','Q-animate-left','Q-animate-left', true, 0, false);
  scrollSpyRemoveClass('class','Q-animate-right','Q-animate-right', true, 0, false);
  scrollSpyRemoveClass('class','Q-animate-top','Q-animate-top', true, 100, false);
  scrollSpyRemoveClass('class','Q-animate-bottom','Q-animate-bottom', true, -100, false);
  scrollSpyRemoveClass('class','Q-animate-fade','Q-animate-fade', true, 0, false);
  scrollSpyAddClass('class','Q-Scroll','Q-animate-hide', true, -100, true);
  scrollSpyRemoveClass('class','Q-Back','Q-animate-hide', true, -100, true);
  scrollSpyClickEvent('class', 'numberRoll', true, -100);
  if($(window).width()>1024) {
    $('.numberRoll').html('0');
    $('.numberRoll').click(function(){
      var current = $(this);
      if(current.hasClass('numberRoll')){
        numberRoll($(this),1000, 100, 0);
        $(this).removeClass('numberRoll');
      }
    });
    $('body,.modal').niceScroll({
      scrollspeed:'60',
      mousescrollstep:'40',
      zindex:'99999',
      bouncescroll:'enable',
      cursorborderradius:'0px',
      cursorborder:'none',
      cursorcolor:'#00adee'
    });
  }
});
