import java.util.Random;

Random generator;

void setup() {
  size(640,360);
  generator = new Random();
  background(255);
}

void draw() {
  float num = (float) generator.nextGaussian();
  float sd = 60;
  float mean = 320;
  
  float x = sd * num + mean;
  
  noStroke();
  fill(0,10);
  ellipse(x,100,16,16);
}