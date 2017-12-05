float t;
Walker walker;

void setup(){
  size(640,360);
  //background(255);
  //t = 0;
  walker = new Walker();
}

//Walker
void draw() {
  walker.step();
  walker.display();
}

//Circle distribution
//void draw(){
//  float n = noise(t);
//  float x = map(n,0,1,0,width);
//  ellipse(x,180,16,16);
//  t += 0.01;
//}

//Noise graph
//void draw(){
//  float y = noise(t);
//  t += 0.001;
//  point(t*width,y*height);
//}