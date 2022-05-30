function setup() {
  createCanvas(400, 400);
  background(51);
  stroke(20, 255, 20);
}

function draw() {
  translate(width/2, height);
  branch(150);
  return 0;
}

function branch(length){
  line(0, 0, 0, -length);
  translate(0, -length);
  if(length > 1){
    push();
      rotate(PI/4);
      branch(length/1.7);
    pop();
    push();
      rotate(-PI/4);
      branch(length/1.7);
    pop();
  }
  
}
