class Turtle {

  String todo;
  float len;
  float theta;
  
  Turtle(String s, float l, float t) {
    todo = s;
    len = l;
    theta = t;
  }
  
  void render() {
    stroke(0,175);
    for (int i = 0; i < todo.length(); i++) {
      char c = todo.charAt(i);
      if (c == 'F') {
        line(0, 0, len, 0);
        translate(len, 0);
      } else if (c == '-') {
        rotate(theta);
      } else if (c == '+') {
        rotate(-theta);
      }
    }
  }
  
  void setLen(float l) {
    len = l;
  }
  
  float calculateCurrLen(int step) {
    float ans = 0.8*height;
    float denom = 2;
    while(step > 1){
      denom = 3*denom+2;
      step--;
    }
    return ans/denom;
  }
  
  void setToDo(String s) {
    todo = s;
  }
}