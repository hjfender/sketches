class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;


  Mover(){
    this.location = new PVector(width/2, height/2);
    this.velocity = new PVector(0,0);
    this.acceleration = new PVector(-0.001,0.001);
    this.topspeed = 10;
  }
  
  void update(){
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse,location);
    
    //dir.normalize();
    //dir.mult(0.5);
    
    dir.mult(0.001);
    
    acceleration = dir;
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    
    checkEdges();
  }
  
  void display(){
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,16,16);
  }
  
  void checkEdges(){
    if (location.x > width) {
      location.x = width;
    } else if (location.x < 0){
      location.x = 0;
    }
    
    if (location.y > height){
      location.y = height;
    } else if (location.y < 0){
      location.y = 0;
    }
  }
}