let z = 0, g=100, h, col, a;

function setup() {
  createCanvas(400, 400, P2D);
  noFill();
  stroke(225);
  strokeWeight(2);
}

function draw() {
  background(22, 22, 55);
  translate(width/2, height/2);
  for(let i=0;i<=g;i+=0.05){
    if(i <= 10){
      a = 10;
    }else if(i > 10){
      a = map (i, 11, 100, -44, 54);
      a = amp(a);
    }
    h = sn(i, z, a);
    point(i, h);
    point(-i, h);
    z -= 0.0001;
  }
  
}

function sn(i, z, a){
  return a*sin(i/1.5 + z);
}

function amp(a){
  return (-a * a)/100 +30;
}
