class Walker {
  PVector pos;
  MonteCarlo random;
  
  Walker(){
    pos = new PVector(width/2, height/2);
    random = new MonteCarlo();
  }
  
  void display(){
    stroke(0);
    point(pos.x,pos.y);
  }
  
  void step(){
    float r = random.generateFloat();
    
    float stepx = random(-r,r);
    float stepy = random(-r,r);
    
    pos.x += stepx;
    pos.y += stepy;
  }
}