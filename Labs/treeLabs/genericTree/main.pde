public class BinarySearchTree<T extends Comparable<T>> {
  private TreeNode<T> root;
  private ArrayList<String> StrNums = new ArrayList<String>();
  public BinarySearchTree() {
    root=null;
  }

  public void add(T val) {
    root= add(val, root);
  }

  //private helper method
  private TreeNode<T> add(T val, TreeNode<T> tree) {//1
    if (tree==null)
      tree=new TreeNode<T>(val);

    T treeValue=tree.getValue();
    int dirTest=val.compareTo(treeValue);
    if (dirTest<0)
      tree.setLeft(add(val, tree.getLeft()));
    if (dirTest>0)
      tree.setRight(add(val, tree.getRight()));
    return tree;
  }

  public void inOrder() {
    inOrder(root);
  }

  private void inOrder(TreeNode tree) {//2
    if (tree==null)
      return;
    inOrder(tree.leftTreeNode);
    print(tree.treeNodeValue+" ");
    inOrder(tree.rightTreeNode);
  }

  public void preOrder() {
    preOrder(root);
  }

  private void preOrder(TreeNode tree) {//3
    if (tree==null)
      return;
    print(tree.treeNodeValue+" ");
    preOrder(tree.leftTreeNode);
    preOrder(tree.rightTreeNode);
  }

  public void postOrder() {
    postOrder(root);
  }

  private void postOrder(TreeNode tree) {//4
    if (tree==null)
      return;
    postOrder(tree.leftTreeNode);
    postOrder(tree.rightTreeNode);
    print(tree.treeNodeValue+" ");
  }

  public void revOrder() {
    revOrder(root);
  }

  public void revOrder(TreeNode tree) {//5
    if (tree==null)
      return;
    revOrder(tree.rightTreeNode);
    print(tree.treeNodeValue+" ");
    revOrder(tree.leftTreeNode);
  }

  public void levelOrder() {
    levelOrder(root);
  }

  public void levelOrder(TreeNode tree) {//6 
    Queue<TreeNode>level=new LinkedList<TreeNode>();
    level.add(tree);//adds the tree to a queue to remove in 
    //LIFO order (last in, first out)
    //it is also a breadth first search BFS algorithm!
    //BFS goes wide, where as depth first algorithms (DFS)
    //like preOrder, postOrder, reverseOrder go deep first and 
    //use recursion which uses the stack in
    //FIFO order (first in, first out)
    //check out the visualizations on graphs...which are also
    //node based https://graph.brianreber.com/
    //so the root is pulled off, then it's children are added to the queue

    while (!level.isEmpty()) {//then removes one by one
      TreeNode node = level.remove();
      print(node.getValue()+" ");

      if (node.getLeft()!=null) {
        level.add(node.getLeft());
      }
      if (node.getRight()!=null) {
        level.add(node.getRight());
      }
    }
  }

  public int getNumLevels() {
    return getNumLevels(root);
  }

  private int getNumLevels(TreeNode tree) {//7
    if (tree!=null)
      return 1+Math.max(getNumLevels(tree.getLeft()), getNumLevels(tree.getRight()));
    return 0;
  }

  public int getWidth() {
    return getWidth(root)+1;
  }

  private int getWidth(TreeNode tree) {//8
    int maxWidth=0;
    int width;
    int h = getHeight(tree); 
    for (int i=1; i<=h; i++) {
      width = getWidth(tree, i);
      if (width > maxWidth)
        maxWidth = width;
    }
    return maxWidth;
  }

  int getWidth(TreeNode tree, int level) { 
    if (tree == null) 
      return 0; 

    if (level == 1) 
      return 1; 
    else if (level > 1) 
      return getWidth(tree.leftTreeNode, level - 1) 
        + getWidth(tree.rightTreeNode, level - 1); 
    return 0;
  }

  public int getHeight() {
    return getHeight(root)-1;
  }

  private int getHeight(TreeNode tree) {//9
    if (tree == null)
      return 0;
    else {
      int lHeight = getHeight(tree.leftTreeNode);
      int rHeight = getHeight(tree.rightTreeNode);

      return (lHeight > rHeight) ? (lHeight +1) : (rHeight +1);
    }
  }

  public int getNumLeaves() {
    return getNumLeaves(root);
  }

  private int getNumLeaves(TreeNode tree) {//10
    if (tree==null)
      return 0;
    if (tree.leftTreeNode == null && tree.rightTreeNode==null)
      return 1;
    else
      return getNumLeaves(tree.leftTreeNode) + getNumLeaves(tree.rightTreeNode);
  }

  public int getNumNodes() {
    return getNumNodes(root);
  }

  private int getNumNodes(TreeNode tree) {//11
    int temp=0;
    if (tree==null)
      return 0;
    numNodesListBuilder(tree);
    return StrNums.size();
  }

  private void numNodesListBuilder(TreeNode tree) {
    getNumNodes(tree.rightTreeNode);
    this.StrNums.add(tree.treeNodeValue+" ");
    getNumNodes(tree.leftTreeNode);
  }

  public boolean search(T val) {
    return search(val, root);
  }

  private boolean search(T val, TreeNode<T> tree) {//12
    if (tree != null) {
      int dirTest = val.compareTo(tree.getValue());
      if (dirTest == 0 ) 
        return true;
      else if (dirTest < 0)
        return search(val, tree.getLeft());
      else if (dirTest > 0)
        return search(val, tree.getRight());
    }
    return false;
  }

  public void remove(T val) {
    root = remove(val, root);
  }

  private TreeNode remove(T val, TreeNode<T> tree) {//13
    if (tree == null) {//tricky...trace to understand how this works:
      return null;
    }

    T treeValue = tree.getValue();
    int dirTest = val.compareTo(treeValue);

    if (dirTest < 0)
      tree.setLeft(remove(val, tree.getLeft()));
    else if (dirTest > 0)
      tree.setRight(remove(val, tree.getRight()));//traverse until node is found, then:


    else {
      //case 1" remove leaf node
      if (tree.getRight()==null&&tree.getLeft()==null) {
        return null;//set pointer to null effectively removing the leaf node

        //case 2: remove a node with one child
      }

      if (tree.getLeft()==null) {
        return tree.getRight();
      } 

      if (tree.getRight()==null) {
        return tree.getLeft();

        //case 3: two children
      } else {
        TreeNode<T> successor=getSmallest(tree.getRight());//get smallest node
        tree.setValue(successor.getValue());//set smallest node value
        tree.setRight(remove(successor.getValue(), tree.getRight()));//set smallest node pointer
      }
    }
    return tree;
  }

  public Comparable getSmallest() {
    return getSmallest(root).getValue();
  }

  private TreeNode<T> getSmallest(TreeNode<T> tree) {//14
    return tree;
  }

  public String toString() {
    return toString(root);
  }

  private String toString(TreeNode tree) {//15
    String temp="";
    for (String x : StrNums)
      temp+=x+" ";
    return "Tree as a string: "+temp;
  }

  public boolean isFull() {
    return isFull(root);
  }

  private boolean isFull(TreeNode tree) {
    if (getWidth()==getNumLeaves())
      return true;
    return false;
  }
}
