import java.util.LinkedList;
import java.util.Queue;

void setup() {
  BinarySearchTree<Integer> tree = new BinarySearchTree<Integer>();

  tree.add(90);
  tree.add(100);
  tree.add(80);
  tree.add(70);
  tree.add(85);
  tree.add(98);
  tree.add(120);

  println("In order form");//2
  tree.inOrder();
  println("\n");
  println("Pre-order form");//3
  tree.preOrder();
  println("\n");
  println("Post order form");//4
  tree.postOrder();
  println("\n");
  println("Reverse order form");//5
  tree.revOrder();

  println("\n\nThe number of levels is: " + tree.getNumLevels());//7
  
  println("\nThe tree height is: " + tree.getHeight());//9
  
  println("\nThe tree width is: " + tree.getWidth());//8
  
  println("\nThe number of leaves is: " + tree.getNumLeaves());//10
  
  println("\nThe number of nodes is: " + tree.getNumNodes());//11
  
  println("\n");
  println();
  
  println(tree);//15
  println("\nThe tree is full? "+tree.isFull());
  //End first evaluations------------------------------------------------
  
  println(tree.search(100)?"\nThe tree contains 100":"\nThe tree doesn't contain 100");
  
  println(tree.search(114)?"\nThe tree contains 114":"\nThe tree doesn't contain 114");
  println("\n");
  
  println("The smallest tree node is: " + tree.getSmallest());//14
  
  println("\n\nTree before removing any nodes - using level order traversal.");
  tree.levelOrder();//6

  tree.remove(90);//13
  println("\n\nThe tree after removing 90:");
  tree.levelOrder();

  tree.remove(70);
  println("\n\nThe tree after removing 70:");
  tree.levelOrder();
}

//End of evals------------------------------------------------------

public interface Treeable<T extends Comparable<T>> {
  public Object getValue();
  public Treeable<T> getLeft();
  public Treeable<T> getRight();
  public void setValue(T value);
  public void setLeft(Treeable<T> left);
  public void setRight(Treeable<T> right);
}

//---------------------------------------------------------

public class TreeNode<T extends Comparable<T>> implements Treeable<T> {
  private T treeNodeValue;
  private TreeNode<T> leftTreeNode;
  private TreeNode<T> rightTreeNode;

  public TreeNode() {
    treeNodeValue = null;
    leftTreeNode = null;
    rightTreeNode = null;
  }

  public TreeNode(T value) {
    treeNodeValue = value;
    leftTreeNode = null;
    rightTreeNode = null;
  }

  public TreeNode(T value, TreeNode<T> left, TreeNode<T> right) {
    treeNodeValue = value;
    leftTreeNode = left;
    rightTreeNode = right;
  }

  public T getValue() {
    return treeNodeValue;
  }

  public TreeNode<T> getLeft() {
    return leftTreeNode;
  }

  public TreeNode<T> getRight() {
    return rightTreeNode;
  }

  public void setValue(T value) {
    treeNodeValue = value;
  }

  public void setLeft(Treeable<T> left) {
    leftTreeNode = (TreeNode<T>)left;
  }

  public void setRight(Treeable<T> right) {
    rightTreeNode = (TreeNode<T>)right;
  }
}

//---------------------------------------------------------
