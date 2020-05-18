import java.util.*;
import static java.lang.System.*;

void setup() {
  ListFunHouseTwo funHouse = new ListFunHouseTwo(); 

  funHouse.add("over");
  funHouse.add("up");               
  funHouse.add("-a-2-1");
  funHouse.add("2.1");
  funHouse.add("34");
  funHouse.add("at");
  funHouse.add("on");
  funHouse.add("go");


  out.println("Original list values\n");  
  System.out.println(funHouse);
  out.println("\n");

  out.println("num nodes = " + funHouse.nodeCount());

  out.println("\nList values after calling nodeCount\n");  
  System.out.println(funHouse);
  out.println();    

  funHouse.doubleLast();    
  out.println("\nList values after calling doubleLast\n");              
  System.out.println(funHouse);
  out.println();        


  funHouse.doubleFirst();    
  out.println("\nList values after calling doubleFirst\n");              
  System.out.println(funHouse);
  out.println();  


  funHouse.removeXthNode(2);    
  out.println("\nList values after calling removeXthNode(2)\n");          
  System.out.println(funHouse);
  out.println();      


  funHouse.setXthNode(2, "one");    
  out.println("\nList values after calling setXthNode(2,one)\n");                    
  System.out.println(funHouse);
  out.println();
}
