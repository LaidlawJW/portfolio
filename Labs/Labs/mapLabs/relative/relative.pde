void setup(){
  Relatives rela = new Relatives();
  String[] info = loadStrings("relatives.txt");
  
  for(String s: info){
    rela.setPersonRelative(s);
  }
  println(rela);
}
