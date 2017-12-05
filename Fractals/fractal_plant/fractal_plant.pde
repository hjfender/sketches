/**
* Lindenmayer system
* Fractal plant
**/

//float theta;

void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  frameRate(30);
  stroke(255);
  //Pick an angle between 0 and 90 degrees based on mouse position
  //float a = (mouseX / (float) width) * 90f;
  //Convert it to radians
  //theta = radians(a);
  //Start the tree from the bottom of the screen
  translate(width/2,height);
  
}

void branch(float h) {

}