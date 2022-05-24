float angle;
float t;

void setup(){
  size(900, 900);
  rectMode(CENTER);
  //strokeWeight(10);
  background(0);
  noStroke();
  smooth();
}

void draw(){
  background(0);
  translate(width/2, height/2);
  for(int i=20;i>=1;i--){
    fill(r(t,i/5.0), g(t,i/5.00), b(t,i/5.00));
    rect(0, 0, i*25, i*25, 10);
  }
  t += 0.01;
}

float r(float t, float i){
  return abs((255*sin(t+i)));
}

float g(float t, float i){
  return abs((255*sin(t+255+i)));
}

float b(float t, float i){
  return abs((255*sin(t+510+i)));
}
