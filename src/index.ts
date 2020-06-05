import $ from 'jquery';
import spiderMan from './spider';
const openNav = () => {
  $('#home-nav').css('width', '300px');
}
const closeNav = () => {
  $('#home-nav').css('width', '0');
}

const bodyClose = () => {
  if (parseInt($('#home-nav').css('width')) === 300) {
    closeNav();
  }
}

$('#spider-click').click(spiderMan);
$('#menu-icon').click(openNav);
$('#nav-close').click(closeNav);
$('body').click(bodyClose);
$(document).keydown((e: KeyboardEvent) => {
  if (e.keyCode === 27) {
    closeNav()
  }
})


