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
      } else if (c == '+') {
        rotate(theta);
      } else if (c == '-') {
        rotate(-theta);
      }
    }
  }
  
  void setLen(float l) {
    len = l;
  }
  
  float calculateCurrLen(int step) {
    return 0.8*height * ((float) 1/(pow(2,step)-1));
  }
  
  void setToDo(String s) {
    todo = s;
  }
}