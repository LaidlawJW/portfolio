class StackTester {
  private Stack<String> stack;

  public StackTester() {
    setStack("");
  }

  public StackTester(String line) {
    setStack(line);
  }

  public void setStack(String line) {
    stack = new Stack<String>();
    Scanner scan=new Scanner(line);
    
    while (scan.hasNext()) {
      stack.push(scan.next());
    }
  }

  public void popEmAll() {
    System.out.println("popping all items from the stack...");
    //which loop works for the push pop operations of a stack?

    // //1.  this one...?  and why? (The stack's size will decreases as items are popped, so I don't want to use this one)
    // for (int i=0; i<stack.size(); i++) {
    //     System.out.print(stack.pop()+ " ");
    // }

    //2. or this one? (It will continually remove and return until the stack is empty, so I'll use it)
    while (stack.isEmpty()!=true)
    {
      System.out.print(stack.pop()+ " ");
    }

    System.out.println("\n");
  }

  public String toString() {
    return ""+stack;
  }
}
