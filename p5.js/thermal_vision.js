var video;
let d;

function setup() {
  createCanvas(400, 400, P2D);
  video = createCapture(VIDEO);
  video.size(150, 150);
  video.hide();
  noStroke();
}

function draw() {
  let w = width / video.width;
  let h = height / video.height;
  
  video.loadPixels();
  
  for(let i=0;i< video.width; i++){
    for(let j=0;j<video.height;j++){
      const pixelIndex = (i + j * video.height) * 4;
      const r = video.pixels[pixelIndex + 0]
      const g = video.pixels[pixelIndex + 1];
      const b = video.pixels[pixelIndex + 2];
      const bright = (r + b + g)/3;
      if(bright <= 23 || bright >= 230){
        fill(bright);
      }else if(bright > 23 && bright <= 46){
        fill(51, 0, 102);
      }else if(bright > 46 && bright <= 69){
        fill(86, 29, 94);
      }else if(bright > 69 && bright <= 92){
        fill(167, 50, 152);
      }else if(bright > 92 && bright <= 115){
        fill(246, 154, 205);
      }else if(bright > 115 && bright <= 138){
        fill(164, 55, 43);
      }else if(bright > 138 && bright <= 161){
        fill(212, 136, 39);
      }else if(bright > 161 && bright <= 184){
        fill(255, 218, 45);
      }else if(bright > 184 && bright <= 207){
        fill(255, 235, 0);
      }else{
        fill(255, 255, 136);
      }
      noStroke();
      square(i * w, j * h, w+0.5);
    }
  }
  
  
}
