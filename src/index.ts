import $ from 'jquery';
import spiderMan from './spider';
const openNav = () => {
  $('#home-nav').css('width', '300px');
}
const closeNav = () => {
  $('#home-nav').css('width', '0');
}

$('#spider-click').click(spiderMan);
$('#menu-icon').click(openNav);
$('#nav-close').click(closeNav);


