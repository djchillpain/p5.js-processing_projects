int a, b, c, d, e, f, g;
int sc;
void setup(){
  size(900, 900);
  strokeWeight(10);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  sc = second();
  segment(sc%10);
  sc /= 10;
  stroke(a);
  line(-42, -100, 42, -100);
  stroke(b);
  line(-42, 0, 42, 0);
  stroke(c);
  line(-42, 100, 42, 100);
  stroke(d);
  
  line(-50, -5, -50, -95);
  stroke(e);
  line(-50, 5, -50, 95);
  stroke(f);
  line(50, -5, 50, -95);
  stroke(g);
  line(50, 5, 50, 95);
  segment(sc%10);
  translate(-124, 0);
    stroke(a);
  line(-42, -100, 42, -100);
  stroke(b);
  line(-42, 0, 42, 0);
  stroke(c);
  line(-42, 100, 42, 100);
  stroke(d);
  
  line(-50, -5, -50, -95);
  stroke(e);
  line(-50, 5, -50, 95);
  stroke(f);
  line(50, -5, 50, -95);
  stroke(g);
  line(50, 5, 50, 95);
}


void segment(int t){
  if(t == 0){
    a=c=d=e=f=g=255;
    b=51;
  }else if(t == 1){
    f=g=255;
    a=b=c=d=e=51;
  }else if(t == 2){
    a=f=b=e=c=255;
    d=g=51;
  }else if(t == 3){
    a=f=b=g=c=255;
    d=e=51;
  }else if(t == 4){
    d=b=g=f=255;
    a=c=e=51;
  }else if(t == 5){
    a=d=b=g=c=255;
    f=e=51;
  }else if(t == 6){
    a=d=b=e=c=g=255;
    f=51;
  }else if(t == 7){
    a=f=g=255;
    d=b=e=c=51;
  }else if(t == 8){
    a=b=c=d=e=f=g=255;
  }else{
    a=f=b=d=g=c=255;
    e=51;
  }
}
