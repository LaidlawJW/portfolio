// I've been attempting this for over 4 hours today, this was as far as I got before I had to do my other homework for the day.

import java.util.Stack;
import java.util.Scanner;

void setup() {
  PostFix test = new PostFix("2 7 + 1 2 + +");
  test.solve();
  System.out.println(test);

  test.setExpression("1 2 3 4 + + +");
  test.solve();
  System.out.println(test);

  test.setExpression("9 3 * 8 / 4 +");
  test.solve();
  System.out.println(test);

  test.setExpression("3 3 + 7 * 9 2 / +");
  test.solve();
  System.out.println(test);

  test.setExpression("9 3 / 2 * 7 9 * + 4 –");
  test.solve();
  System.out.println(test);

  test.setExpression("5 5 + 2 * 4 / 9 +");
  test.solve();
  System.out.println(test);
}

public class PostFix {
  private Stack<Double> stack;
  private String expression;
  private double result;

  public PostFix() {
    stack = new Stack<Double>();
    setExpression("");
  }

  public PostFix(String exp) {
    stack = new Stack<Double>();
    setExpression(exp);
  }

  public void setExpression(String exp) {
    expression = exp;
  }

  public double calc(double one, double two, char op) {
    double eval = 0.0;

    if (op == '+') {
      eval = one + two;
    } 

    if (op == '-') {
      eval = one - two;
    } 

    if (op == '*') {
      eval = one * two;
    } 

    if (op == '/') {
      eval = one / two;
    } 

    if (op == '^') {// This isn't needed for the current problem, but some situations do involve exponents
      eval = Math.pow(one, two);
    }
    return eval;
  }

  public boolean isDouble(String thing) {
    try {
      Double.parseDouble(thing);
      return true;
    }
    catch(Exception e) {
      return false;
    }
  }

  public double solve() {
    Scanner scan = new Scanner(expression);

    while (scan.hasNext()) {
      String[] parts = expression.split(" ");
      String item = scan.next();
      char mathOP = item.charAt(0);//has to be a symbol
      for (int i = 0; i<parts.length; i++) {
        if (isDouble(item) == true) {
          stack.push((double)(mathOP));
        } else if (mathOP == '+'|| mathOP == '-'|| mathOP == '*'|| mathOP == '/'|| mathOP == '^') {
          double num1 = stack.pop();
          double num2 = stack.pop();
          result = stack.push(calc(num1, num2, mathOP));
        }
      }
    }
    return result;
  }

  public String toString() {
    return expression + " = " + solve();
  }
}
