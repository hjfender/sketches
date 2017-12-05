void drawCircle(int x, int y, float radius) {
  //draw circles within circles and influence them with the mouse position in the view
  ellipse(x, y, radius, radius);
  if(radius > 2) {
    radius *= 0.75f;
    drawCircle(x,y,radius);
  }
}

void drawCircle2(float x, float y, float radius){
  //draw circles and then sub circles, left and right
  stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 5) {
    drawCircle2(x+radius/2, y, radius/2);
    drawCircle2(x-radius/2, y, radius/2);
  }
}

void drawCircle4(float x, float y, float radius) {
  //draw circles as above but with the addition of above and below
  //my computer does not seem to be able to render is correctly lol
  //I MIGHT be making a mistake
  ellipse(x, y, radius, radius);
  if(radius > 5) {
    drawCircle4(x+radius/2, y, radius/2);
    drawCircle4(x-radius/2, y, radius/2);
    drawCircle4(x, y+radius/2, radius/2);
    drawCircle4(x, y-radius/2, radius/2);
  } 
}

void setup(){
  size(1000, 640);
}

void draw(){
  background(255);
  //drawCircle(width/2,height/2,mouseX*mouseY);
  //drawCircle2(width/2,height/2,200);
  drawCircle4(width/2,height/2,300);
}