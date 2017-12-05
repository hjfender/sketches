PVector location;
PVector velocity;

void setup() {
  size(640,360,P3D);
  location = new PVector(100,100,100);
  velocity = new PVector(2.5,5,0);
}

void draw() {
  background(0);
  
  location.add(velocity);
  if((location.x > width) || (location.x < 0)){
    velocity.x = velocity.x * -1;
  }
  if((location.y > height) || location.y < 0){
    velocity.y = velocity.y * -1;
  }
  
  pushMatrix();
  translate(location.x,location.y,location.y);
  stroke(255);
  fill(175);
  sphere(16);
  popMatrix();
  
  
}