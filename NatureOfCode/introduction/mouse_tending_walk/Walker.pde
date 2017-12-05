class Walker {
  PVector pos;
  
  Walker(){
    pos = new PVector(width/2,height/2);
  }
  
  void display(){
    stroke(0);
    point(pos.x,pos.y);
  }
  
  void step(){
    float r = random(1);
    
    PVector mouse = new PVector(mouseX,mouseY);
    
    if(r < 0.5){
      PVector diff = PVector.sub(mouse,pos);
      pos.add(diff.normalize());
    } else {
      int stepx = int(random(3))-1;
      int stepy = int(random(3))-1;
      pos.x += stepx;
      pos.y += stepy;
    }
  }
}