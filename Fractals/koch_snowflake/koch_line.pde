class KochLine {

  PVector start;
  PVector end;
  
  KochLine(PVector a, PVector b) {
    start = a.copy();
    end = b.copy();
    /* 
    * old deprecated version for when the above does not work
    * start = a.get();
    * end = b.get();
    */
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

void generate() {
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
  
  for (KochLine l : lines) {
    l.display();
  }
}