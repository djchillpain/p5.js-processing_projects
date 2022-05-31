let z = 0, g=100, h, col;

function setup() {
  createCanvas(400, 400, P2D);
  noFill();
  strokeWeight(2);
}

function draw() {
  background(0);
  translate(width/2, height/2);
  for(let i=-g;i<=g;i+=0.1){
    col = map(i, -100, 100, 0, 255);
    stroke(10, col, 10);
    h = sn(i, z);
    point(i, h);
    z += 0.00003;
  }
  
}

function sn(i, z){
  return 50*sin(i/31 + z);
}
