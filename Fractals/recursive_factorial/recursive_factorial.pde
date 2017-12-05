int loop_factorial(int n) {
  int f=1;
  for (int i=0; i<n; i++){
    f=f*(i+1);
  }
  return f;
}

int recursive_factorial(int n) {
  if(n==1) {
    return 1;
  }
  else{
    return n*recursive_factorial(n-1);
  }
}

void setup(){
  print("Loop factorial: " + loop_factorial(5)+"\n");
  print("Recursive factorial: " + recursive_factorial(5));
}