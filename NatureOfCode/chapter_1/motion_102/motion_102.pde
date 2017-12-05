Mover mover;

void setup(){
  size(640,360);
  mover = new Mover();
}

void draw(){
  background(255);
  
  mover.checkEdges();
  mover.update();
  mover.display();
}