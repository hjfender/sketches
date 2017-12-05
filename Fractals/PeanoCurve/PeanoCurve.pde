LSystem lsys;
Turtle turtle;

int m = 1;
boolean drawing = false;

void setup(){
  size(600,600);
  Rule[] ruleset = new Rule[2];
  ruleset[0] = new Rule('A', "AFBFA+F+BFAFB-F-AFBFA");
  ruleset[1] = new Rule('B', "BFAFB-F-AFBFA+F+BFAFB");
  lsys = new LSystem("A", ruleset);
  turtle = new Turtle(lsys.getGeneration(m), 0.4*height, radians(90));
  step(m);
}

void draw() {
  drawing = true;
  background(255);
  
  text("Iteration: " + m, 0.1*width, 0.95*height);
  fill(0);
  textSize(14);
  
  translate(0.1*width, 0.9*height);
  turtle.render();
  noLoop();
  drawing = false;
}

void step(int i) {
    turtle.setToDo(lsys.getGeneration(i));
    saveFrame(i+".png");
    redraw();
    turtle.setLen(turtle.calculateCurrLen(i));
}

void mouseMoved(){
  if(!drawing){
    int n = (int) map(mouseX, 0.1*width, 0.9*width, 1, 6);
    if(n > m){
        m = n - 1;
        step(n-1);
    } else if (n < m) {
        m = n + 1;
        step(n+1);
    }
  }
}