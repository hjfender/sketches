LSystem lsys;
Turtle turtle;

int m = 1;
//boolean drawing = false;

void setup(){
  size(600,600);
  Rule[] ruleset = new Rule[2];
  ruleset[0] = new Rule('A', "-BF+AFA+FB-");
  ruleset[1] = new Rule('B', "+AF-BFB-FA+");
  lsys = new LSystem("A", ruleset);
  turtle = new Turtle(lsys.getGeneration(m), 0.8*height, radians(90));
  step(m);
}

void draw() {
  //drawing = true;
  background(255);
  
  //text("Iteration: " + m, 0.1*width, 0.95*height);
  fill(0);
  textSize(14);
  
  translate(0.1*width, 0.9*height);
  turtle.render();
  delay(500);
  step(m);
  saveFrame(m+".png");
  if(m < 9){
    m++;
  } else {
    noLoop();
  }
  //noLoop();
  //drawing = false;
}

void step(int i) {
    turtle.setToDo(lsys.getGeneration(i));
    m=i;
    //redraw();
    turtle.setLen(turtle.calculateCurrLen(i));
}

//void mouseMoved(){
//  if(!drawing){
//    int n = (int) map(mouseX, 0.1*width, 0.9*width, 2, 8);
//    if(n > m){
//        step(n);
//    } else if (n < m) {
//        step(n);
//    }
//  }
//}