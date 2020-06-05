import $ from 'jquery';
let timer: any;
let isMoving: boolean = false;



const spiderMan = () => {
  if (isMoving) {
    $('#home-spider').css('top', '0');
    isMoving = false;
    clearTimeout(timer);
  } else {
    $('#home-spider').css('top', '-300px');
    isMoving = true;
    clearTimeout(timer);
  }

  timer = setTimeout(() => {
    const randomLeft = 20 + Math.random() * 60;
    $('#home-spider').css('top', '0').css('left', `${randomLeft}%`);
    isMoving = false;
  }, 1000);
}

export default spiderMan;

