float t;

void setup(){
  size(1000,600);
  t = 0.0;
  noiseDetail(2);
}

void draw(){
  loadPixels();
  float xoff = 0.0 + t;
  for(int x = 0; x < width; x++){
    float yoff = 0.0 + t;
    for(int y = 0; y < height; y++) {
      //float bright = random(255);
      float bright = map(noise(xoff,yoff),0,1,0,255);
      pixels[x+y*width] = color(1/bright,1/bright,bright);
      yoff += 0.01;
    }
    xoff += 0.01;
  }
  updatePixels();
  t += 0.05;
}