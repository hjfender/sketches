import java.util.Random;

Random generator;
float x_sd = 90;
float x_mean = 395;
float y_sd = 90;
float y_mean = 450;
float size_sd = 3;
float size_mean = 20;


void setup(){
  size(640,640);
  generator = new Random();
  background(255);
}

void draw() {
  float x = (float) generator.nextGaussian();
  x = x_sd * x + x_mean;
  float y = (float) generator.nextGaussian();
  y = y_sd * y + y_mean;
  float w = (float) generator.nextGaussian();
  w = size_sd * w + size_mean;
  float h = (float) generator.nextGaussian();
  h = size_sd * h + size_mean;
  
  float clr = (float) generator.nextGaussian();
  clr = 32 * clr + 32;
  
  float opac = (float) generator.nextGaussian();
  opac = 10 * opac + 80; 
  
  noStroke();
  fill(clr,opac);
  ellipse(x,y,w,h);
}