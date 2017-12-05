import java.util.Random;

class Walker {
  PVector pos;
  Random generator;
  
  Walker(){
    pos = new PVector(width/2,height/2);
    generator = new Random();
  }
  
  void display(){
    stroke(0);
    point(pos.x,pos.y);
  }
  
  void step(){
    double stepx = generator.nextGaussian();
    double stepy = generator.nextGaussian();
    
    pos.x += stepx;
    pos.y += stepy;
  }
}