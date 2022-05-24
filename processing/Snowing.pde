float[][] a = new float[1920][4];
float i=0;
int f_max = 200; //numarul maxim de fulgi
boolean ok=true;
void setup(){
  size(900, 900);
  //fullScreen();
}


void draw(){
  background(25);
  start();
  stroke(255);
  //translate(0, 450);
  for(int j=0;j<1920;j++){
    if(a[j][0] == 1){
      strokeWeight(a[j][3]);
      point(j, a[j][1]);
       a[j][1] += a[j][2];
    }
  }
  stop();
}


void start(){
  int b;
  while(i < f_max){
     b = int(random(0, width)); //se alege o coloana
     if(a[b][0] == 0){
       a[b][0] = 1; //daca coloana e activa 1
       if(ok){
         a[b][1] = random(0, height); //la setup se dau valori pentru pozitiile fulgilor
       }else{ a[b][1] = -10;} //locul de unde pleaca fulgul
       a[b][3] = random(4, 10); //grosimea
       a[b][2] =map(a[b][3], 4, 10, 1, 3);//viteza
       i++;
     }
  }
  ok = false;
}

void stop(){
  for(int j=0;j<width;j++){
    if(a[j][1] >= height){
      a[j][0] = 0;
      a[j][1] = 0;
      i--;
    }
  }
}
