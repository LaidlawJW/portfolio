void setup(){
  String line1 = "yo quiero una ordenador virus";
  String line2 = "todas de los muchachos tienen interno memoria";
  String line3 = "mi pelo es cafe";
  String line4 = "tu quieres tinta con su papel";
  String line5 = "rearrancar el ordenador a vacio el pantalla";
  
  String all = line1+"\n"+line2+"\n"+line3+"\n"+line4+"\n"+line5;
  
  String[] translations = loadStrings("translate.txt");
  String trans = translations.toString();
  
  SpanishToEnglish se = new SpanishToEnglish();
  se.putEntry(trans);
  se.translate(all);
  println(all);
}
