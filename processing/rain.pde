float[][] a = new float[900][4];
float i=0;
boolean ok=true;
void setup(){
  size(900, 900);
  strokeWeight(2);
  stroke(204, 204, 255, 128);
}


void draw(){
  background(21);
  start();
  //translate(0, 450);
  for(int j=0;j<900;j++){
    if(a[j][0] == 1){
      line(j, a[j][1], j, a[j][1]+a[j][3]);
       a[j][1] += a[j][2];
    }
  }
  stop();
}


void start(){
  int b;
  while(i < 200){
     b = int(random(0, 900));
     if(a[b][0] == 0){
       a[b][0] = 1;
       if(ok){
         a[b][1] = random(0, 900);
       }else{ a[b][1] = -20;}
       a[b][3] = random(8, 20);
       a[b][2] =map(a[b][3], 8, 20, 3, 6);
       i++;
     }
  }
  ok = false;
}

void stop(){
  for(int j=0;j<900;j++){
    if(a[j][1] >= height){
      a[j][0] = 0;
      a[j][1] = 0;
      i--;
    }
  }
}
