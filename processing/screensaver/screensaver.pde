
float x, y;
float x0, x9, y0, y9;
float speed=3.0;
float wg = 30;
PImage img;
float multi=2.2; //img size multiplier
float ih=92*multi*1.0, iw=200*multi*1.0;

void setup() {
  size(900, 900, P2D);
  surface.setResizable(true);
  x9 = 1;
  y9 = 1;
  x0 = 0;
  y0 = 0;
  x = random(200, width);
  y = random(200, height);
  imageMode(CENTER);
  img = loadImage("dvd.png");
}

void draw() {
  background(0);
  pos(x, y);
  image(img, x, y, iw, ih);
  if (x0 > 0) {
    x -= x0 * speed;
  }
  if (x9 > 0) {
    x += x9 * speed;
  }
  if (y0 > 0) {
    y -= y0 * speed;
  }
  if (y9 > 0) {
    y += y9 * speed;
  }
}

void pos(float x, float y) {
  if (x >= width*1.0-iw/2) {
    x9 = 0;
    x0 = random(0.5, 1.0);
    tint(random(0, 255), random(0, 255), random(0, 255));
  } else if (x <= 0+iw/2) {
    x0 = 0;
    x9 = random(0.5, 1.0);
    tint(random(0, 255), random(0, 255), random(0, 255));
  }
  if (y >= height*1.0-ih/2) {
    y9 = 0;
    y0 = random(0.5, 1.0);
    tint(random(0, 255), random(0, 255), random(0, 255));
  } else if (y <= 0+ih/2) {
    y0 = 0;
    y9 = random(0.5, 1.0);
    tint(random(0, 255), random(0, 255), random(0, 255));
  }
}
