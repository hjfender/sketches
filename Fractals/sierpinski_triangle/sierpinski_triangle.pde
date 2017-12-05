//Koch curve recursive
//Array list tracking technique for fractal rendering

class SierpinskiTriangle {
  PVector x;
  PVector y;
  PVector z;
  
  SierpinskiTriangle(PVector a, PVector b, PVector c){
    x = a.copy();
    y = b.copy();
    z = c.copy();
  }
  
  //Triangle is in the following form
  //  A
  // B C
  //D E F
  
  PVector sierpinskiA() {
    return y.copy();
  }
  
  PVector sierpinskiB() {
    PVector v = y.copy().sub(x.copy());
    v.div(2.0);
    v.add(x.copy());
    return v;
  }
  
  PVector sierpinskiC() {
    PVector v = y.copy().sub(x.copy());
    v.div(2.0);
    v.add(x);
    return v;
  }
  
  PVector sierpinskiD() {
    return x.copy();
  }
  
  PVector sierpinskiE() {
    return y.copy();
  }
  
  PVector sierpinskiF() {
    return z.copy();
  }
  
  void display() {
    stroke(0);
    fill(0);
    triangle(x.x,x.y,y.x,y.y,z.x,z.y);
  }
}

ArrayList<SierpinskiTriangle> triangles;

void stepForward() {
  ArrayList next = new ArrayList<SierpinskiTriangle>();
  for (SierpinskiTriangle t : triangles){
    
    //Triangle is in the following form
    //  A
    // B C
    //D E F
    
    PVector a = t.sierpinskiA();
    PVector b = t.sierpinskiB();
    PVector c = t.sierpinskiC();
    PVector d = t.sierpinskiD();
    PVector e = t.sierpinskiE();
    PVector f = t.sierpinskiF();
    
    //next.add(new SierpinskiTriangle(b,a,c));
    //next.add(new SierpinskiTriangle(d,b,e));
    next.add(new SierpinskiTriangle(e,c,f));
  }
  triangles = next;
  
  currItr++;
}

void stepBackward() {
  if(triangles.size() != 1){
    ArrayList prev = new ArrayList<SierpinskiTriangle>();
    for (int i = 0; i < triangles.size(); i+=4){
    
    }
    triangles = prev;
    
    currItr--;
  }
}

void setup() {
  size(500, 500);
  background(255);
  triangles = new ArrayList<SierpinskiTriangle>();
  
  PVector x = new PVector(width/2,sqrt(2*pow(0.1*width,2)));
  PVector y = new PVector(0.1*width,0.9*width);
  PVector z = new PVector(0.9*width,0.9*width);
  
  triangles.add(new SierpinskiTriangle(x,y,z));
}

int currItr = 1;

void mouseMoved(){
  //int n = (int) map(mouseX, 10, width-10, 1, 9);
  //println(currItr+" "+n);
  //if(n > currItr){
  //    stepForward();
  //} else if (n < currItr) {
  //    stepBackward();
  //}
}

void mouseClicked(){
  stepForward();
}

void draw() {
  background(255);
   
  for (SierpinskiTriangle t : triangles) {
    t.display();
  }
}