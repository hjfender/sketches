class Turtle {

  String todo;
  float short_len;
  float long_len;
  
  Turtle(String s) {
    todo = s;
  }
  
  void render(int step) {
    stroke(0,175);
    calculateCurrLen(step);
    for (int i = 0; i < todo.length(); i++) {
      char c = todo.charAt(i);
      if (c == 'S') {
        rotate(radians(90));
        line(0, 0, short_len, 0);
        translate(short_len, 0);
      } else if (c == 'H') {
        rotate(-radians(45));
        line(0, 0, long_len, 0);
        translate(long_len, 0);
        rotate(-radians(135));
      }
    }
  }
  
  void calculateCurrLen(int step) {
    float partitioned_sqr_side_ln = (float) (0.8*height)/(pow(2,step+1)-1);
    println("Sqr side length: " + partitioned_sqr_side_ln);
    if(step == 0) {
      this.short_len = sqrt(pow(partitioned_sqr_side_ln,2)/2f);
      this.long_len = 0;
    } else {
      this.short_len = sqrt(pow(partitioned_sqr_side_ln,2)/2f);
      this.long_len = partitioned_sqr_side_ln;
      println("Short Length: " + this.short_len);
    }
    
  }
  
  void setToDo(String s) {
    todo = s;
  }
}