int h=910, w=904;

void setup(){
  size(900, 900, P2D);
  smooth();
  background(0);
  strokeWeight(16);
}

void draw(){
  stroke(255);
  for(int i=0;i<h;i+=4){
    for(int j=0;j<w;j+=4){
      stroke(random(0, 255));
      point(i,j);
    }
  }
}
