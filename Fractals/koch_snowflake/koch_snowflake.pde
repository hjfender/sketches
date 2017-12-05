ArrayList<KochLine> lines;

void setup() {
  size(600, 600);
  background(255);
  lines = new ArrayList<KochLine>();
  
  int boundary = 200;
  
  PVector start_top = new PVector(boundary,boundary);
  PVector end_top = new PVector(width-boundary, boundary);
  
  PVector start_left = end_top.copy().sub(boundary,boundary).rotate(radians(60)).add(boundary,boundary);
  PVector end_left = start_top.copy();
  
  PVector start_right = end_top.copy();
  PVector end_right = start_left.copy();
  
  lines.add(new KochLine(start_top, end_top));
  lines.add(new KochLine(start_left, end_left));
  lines.add(new KochLine(start_right, end_right));
  
  for (int i = 0; i<5; i++) {
    generate();
  }
}

void draw() {
  background(255);
   
  for (KochLine l : lines) {
    l.display();
  }
}