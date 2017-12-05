void cantor(float x, float y, float len) {
  if (len >= 1) {
    line(x,y,x+len,y);
    y += 20;
    cantor(x,y,len/3);
    cantor(x+len*2/3,y,len/3);
  }
}

void setup() {
  size(640, 320);
}

void draw() {
  background(255);
  cantor(10, 10, width-20);
}