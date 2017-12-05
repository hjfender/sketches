//Koch curve recursive
//Array list tracking technique for fractal rendering

class KochLine {

  PVector start;
  PVector end;
  
  KochLine(PVector a, PVector b) {
    start = a.copy();
    end = b.copy();
  }
  
  PVector kochA() {
    return start.copy();
  }
  
  PVector kochB() {
    PVector v = PVector.sub(end, start);
    v.div(3);
    v.add(start);
    return v;
  }
  
  PVector kochC() {
    PVector a = start.copy();
    
    PVector v = PVector.sub(end, start);
    v.div(3);
    a.add(v);
    
    v.rotate(-radians(60));
    a.add(v);
    
    return a;
  }
  
  PVector kochD() {
    PVector v = PVector.sub(end, start);
    v.mult(2/3.0);
    v.add(start);
    return v;
  }

  PVector kochE() {
    return end.copy();
  }

  void display() {
    stroke(0);
    line(start.x, start.y, end.x, end.y);
  }
}

ArrayList<KochLine> lines;

void stepForward() {
  ArrayList next = new ArrayList<KochLine>();
  for (KochLine l : lines){
    PVector a = l.kochA();
    PVector b = l.kochB();
    PVector c = l.kochC();
    PVector d = l.kochD();
    PVector e = l.kochE();
    
    next.add(new KochLine(a,b));
    next.add(new KochLine(b,c));
    next.add(new KochLine(c,d));
    next.add(new KochLine(d,e));
  }
  lines = next;
  
  currItr++;
}

void stepBackward() {
  if(lines.size() != 1){
    ArrayList prev = new ArrayList<KochLine>();
    for (int i = 0; i < lines.size(); i+=4){
      PVector a = lines.get(i).start;
      PVector b = lines.get(i+3).end;
      prev.add(new KochLine(a,b));
    }
    lines = prev;
    
    currItr--;
  }
}

void setup() {
  size(600, 300);
  background(255);
  lines = new ArrayList<KochLine>();
  
  PVector start = new PVector(0,200);
  PVector end = new PVector(width, 200);
  
  lines.add(new KochLine(start, end));
}

int currItr = 1;

void mouseMoved(){
  int n = (int) map(mouseX, 10, width-10, 1, 9);
  println(currItr+" "+n);
  if(n > currItr){
      stepForward();
  } else if (n < currItr) {
      stepBackward();
  }
}

void draw() {
  background(255);
   
  for (KochLine l : lines) {
    l.display();
  }
}