void setup() {
  size(1200, 800);
  MarkovChain mc = new MarkovChain();
  String [] str = loadStrings("poem.txt");
  String allText = join(str, " ");
  String [] cleanText = allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes non-letters before splitting
  mc.trainMap(cleanText);

  for (String s : cleanText) {
    mc.generateText(s);
    println(mc.generateText(s));
  }
  mc.printMap();
}

interface Markov {
  void trainMap(String [] s);
  String generateText(String s);
}

void draw() {
  background(0);
  textSize(17);
  fill(255);
  text("Original text:", 40, 40);
  text("Markov mapping:", 330, 40);
  text("Probability outcomes (no duplicates):", 770, 40);
  
  textSize(12);
  text("Searching for memories\nThroughout our journeys\nThat make life a little more feathery\n\nReaching out to others\nThroughout our journeys\nAnd feeling more like brothers\n\nKnowing that all things come to an end\nThroughout our journeys\nYet finding new ways to make a friend\n\nA helping hand when you’re feeling low\nCompelling enough to make us glow\nThroughout our journeys\n\nThroughout our journeys\nAdvice hastily but honestly given\nFinds a way to keep us driven\n\nAn entire world to see\nBut only choosing what makes us feel free\nThroughout our journeys", 40, 70);
  text("{a=[little, friend, helping, way] advice=[hastily]\nall=[things] an=[end, entire]\nand=[feeling] brothers=[knowing]\nbut=[honestly, only] choosing=[what]\ncome=[to] compelling=[enough]\ndriven=[an] end=[throughout]\nenough=[to] entire=[world]\nfeathery=[reaching] feel=[free]\nfeeling=[more, low] finding=[new]\nfinds=[a] for=[memories]\nfree=[throughout] friend=[a]\ngiven=[finds] glow=[throughout]\nhand=[when] hastily=[but]\nhelping=[hand] honestly=[given]\njourneys=[that, and, yet, throughout, advice] keep=[us]\nknowing=[that] life=[a]\nlike=[brothers] little=[more]\nlow=[compelling] make=[life, a, us]\nmakes=[us] memories=[throughout]\nmore=[feathery, like] new=[ways]\nonly=[choosing] others=[throughout]\nour=[journeys, journeys, journeys, journeys, journeys, journeys] out=[to]\nreaching=[out] searching=[for]\nsee=[but] that=[make, all]\nthings=[come] throughout=[our, our, our, our, our, our]\nto=[others, an, make, make, keep, see] us=[glow, driven, feel]\nway=[to] ways=[to]\nwhat=[makes] when=[youre]\nworld=[to] yet=[finding]\nyoure=[feeling]}", 330, 70);
  text("searching for\nfor memories\nmemories throughout\nthroughout our\nour journeys\njourneys advice throughout\nthat all\nmake us life\nlife a\na little\nlittle more\nmore like feathery\nfeathery reaching\nreaching out\nout to\nto keep\nothers throughout\nthroughout our\nour journeys \njourneys yet\nand feeling\nfeeling low\nmore like feathery\nlike brothers\nbrothers knowing\nknowing that\nthat make\nall things\nthings come\ncome to\nto keep\nan end entire\nend throughout\nthroughout our\nour journeys\njourneys that and\nyet finding\nfinding new", 770, 70);
  text("new ways\nways to\nto see\nmake a\na helping\nfriend a\na way little\nhelping hand\nhand when\nwhen youre\nyoure feeling\nfeeling low\nlow compelling\ncompelling enough\nenough to\nto see\nmake us life\nus feel\nglow throughout\nthroughout our\nour journeys\njourneys and yet\nthroughout our\nour journeys\njourneys advice\nadvice hastily\nhastily but\nbut only\nhonestly given\ngiven finds\nfinds a\na friend way\nway to\nto make others\nkeep us\nus glow feel\ndriven an\nan entire", 950, 70);
  text("entire world\nworld to\nto see make\nsee but\nbut honestly\nonly choosing\nchoosing what\nwhat makes\nmakes us\nus feel\nfeel free\nfree throughout\nthroughout our\nour journeys\njourneys and yet", 1090, 70);
}
