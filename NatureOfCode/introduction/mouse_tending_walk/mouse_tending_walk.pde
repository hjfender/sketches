Walker walker;

void setup(){
  size(640,360);
  walker = new Walker();
  background(255);
}

void draw(){
  walker.step();
  walker.display();
}