class LSystem {

  ArrayList<String> generations;
  Rule[] ruleset;
  
  LSystem(String axiom, Rule[] r){
    generations = new ArrayList<String>();
    generations.add(axiom);
    ruleset = r;
    for(int n = 1; n < 9; n++){
      this.generate(n);
    }
  }
  
  void generate(int n) {
    String prevgen = generations.get(n-1);
    StringBuffer nextgen = new StringBuffer();
    for(int i=0; i < prevgen.length(); i++) {
      char curr = prevgen.charAt(i);
      String replace = "" + curr;
      for(int j = 0; j < ruleset.length; j++) {
        char a = ruleset[j].getA();
        if(a == curr) {
          replace = ruleset[j].getB();
          break;
        }
      }
      nextgen.append(replace);
    }
    generations.add(nextgen.toString());
  }
  
  String getGeneration(int n) {
    return generations.get(n);
  }
  
}