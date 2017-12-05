class Walker {
  int x;
  int y;
  
  Walker(){
    this.x = width/2;
    this.y = height/2;
  }
  
  void display(){
    stroke(0);
    point(x,y);
  }
  
  void step(){
    float r = random(1);
    
    if(r < 0.4){
      x++;
    } else if (r < 0.6) {
      x--;
    } else if (r < 0.8) {
      y++;
    } else {
      y--;
    }
    
    int stepx = int(random(3))-1;
    int stepy = int(random(3))-1;
    
    x += stepx;
    y += stepy;
  }
}