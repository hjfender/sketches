class Balloon {
 PVector location;
 PVector velocity;
 PVector acceleration;
 
 Balloon(){
  this.location = new PVector(random(width), random(height));
  this.velocity = new PVector(0,0);
 }
 
 void update(){
   velocity.add(acceleration);
   location.add(velocity);
   acceleration.mult(0);
   checkEdges();
 }
 
 void applyForce(PVector force) {
   acceleration.add(force);
 }
 
 void checkEdges(){
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0){
      location.x = width;
    }
    
    if (location.y > height){
      location.y = 0;
    } else if (location.y < 0){
      location.y = height;
    }
  }
  
}