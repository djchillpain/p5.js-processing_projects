PImage heart;
int w, h;
float n=0;

void setup(){
  size(900, 900, P2D);
  background(10);
  heart = loadImage("heart.png");
  noStroke();
}

void draw(){
  translate(450, 450);
  for(int i=30;i>=1;i--){
    w = 30 * i;
    h = 20 * i;
    tint(r(n, i), 120, b(n, i));  
    image(heart, -1*w/2, -1*h/2, w, h);
    n += 0.007;
  }
}

int r(float i, int b){
  return abs(int(255 * sin(i + b/2)));
}

int g(float i, int b){
  return abs(int(255 * sin(i +255 + b/2)));
}

int b(float i, int b){
  return abs(int(255 * sin(i + 510 + b/2)));
}
