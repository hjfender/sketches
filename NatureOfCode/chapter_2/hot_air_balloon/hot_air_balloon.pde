Balloon balloon = new Balloon();

void setup(){
  size(640,360);
  background(255);
}

void draw(){
  if (mousePressed) {
     PVector wind = new PVector(0.5,0);
     balloon.applyForce(wind);
  }
}