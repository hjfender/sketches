LSystem lsys;
Turtle turtle;

int m = 0;
boolean drawing = false;

void setup(){
  size(600,600);
  Rule[] ruleset = new Rule[1];
  ruleset[0] = new Rule('A', "ASAHASA");
  lsys = new LSystem("SASASASA", ruleset);
  turtle = new Turtle(lsys.getGeneration(0));
  step(0);
}

void draw() {
  drawing = true;
  background(255);
  
  //text("Iteration: " + (m+1), 0.1*width, 0.95*height);
  fill(0);
  textSize(14);
  
  translate((0.9)*width-(float)(0.4*height)/(pow(2,m+1)-1), 0.1*height);
  rotate(-radians(45));
  turtle.render(m);
  noLoop();
  drawing = false;
}

void step(int i) {
    turtle.setToDo(lsys.getGeneration(i));
    m=i;
    saveFrame(m+".png");
    redraw();
}

void mouseMoved(){
  if(!drawing){
    int n = (int) map(mouseX, 0.1*width, 0.9*width, 0, 7);
    if(n > m){
        step(n);
    } else if (n < m) {
        step(n);
    }
  }
}