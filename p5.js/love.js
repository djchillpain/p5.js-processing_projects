let i=0, rand=0;

function setup() {
  createCanvas(400, 400);
  textAlign(CENTER);
  textFont("IMPACT");
  textSize(150);
}

function draw() {
  background(50);
  for(i=1;i<=5;i++){
    fill(r(i, rand), g(i, rand), b(i, rand));
    rand += 0.01;
    text("LOVE", width/2, 365-(35*i));
    if(i > 5){
      i = 0;
      background(50);
    }
  }
}

function r(i, t){
  return 255*abs(sin(i/5 + t));
}

function g(i, t){
  return 255*abs(sin(i/5 + t + 150));
}

function b(i, t){
  return 255*abs(sin(i/5 + t + 300));
}
