Mover mover;

void setup(){
  size(640,360);
  mover = new Mover();
}

void draw(){
  mover.checkEdges();
  mover.update();
  mover.display();
}