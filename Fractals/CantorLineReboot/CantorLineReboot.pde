class CantorLine {

  PVector start;
  PVector end;
  
  CantorLine(PVector a, PVector b) {
    start = a.copy();
    end = b.copy();
  }
  
  PVector cantorA(){
    return start.copy();
  }
  
  PVector cantorB(){
    PVector v = PVector.sub(end, start);
    v.div(3.0);
    v.add(start);
    return v;
  }
  
  PVector cantorC(){
    PVector v = PVector.sub(end, start);
    v.mult(2/3.0);
    v.add(start);
    return v;
  }
  
  PVector cantorD(){
    return end.copy();
  }
  
  void display() {
    stroke(0);
    line(start.x, start.y, end.x, end.y);
  }
}

ArrayList<CantorLine> lines;

void stepForward() {
  ArrayList next = new ArrayList<CantorLine>();
  for (CantorLine l : lines){
    PVector a = l.cantorA();
    PVector b = l.cantorB();
    PVector c = l.cantorC();
    PVector d = l.cantorD();
    
    next.add(new CantorLine(a,b));
    next.add(new CantorLine(c,d));
  }
  lines = next;
  currItr++;
}

void stepBackward() {
  if(lines.size() != 1){
    ArrayList prev = new ArrayList<CantorLine>();
    for (int i = 0; i < lines.size(); i+=2){
        PVector a = lines.get(i).start;
        PVector b = lines.get(i+1).end;
        prev.add(new CantorLine(a,b));
      }
    lines = prev;
    currItr--;
  }
}

void setup() {
  size(600, 300);
  background(255);
  lines = new ArrayList<CantorLine>();
  
  PVector start = new PVector(0,200);
  PVector end = new PVector(width, 200);
  
  lines.add(new CantorLine(start, end));
}

int currItr = 1;

void mouseMoved(){
  int n = (int) map(mouseX, 10, width-10, 1, 10);
  println(currItr+" "+n);
  if(n > currItr){
      stepForward();
  } else if (n < currItr) {
      stepBackward();
  }
}

void draw() {
  background(255);
   
  for (CantorLine l : lines) {
    l.display();
  }
}