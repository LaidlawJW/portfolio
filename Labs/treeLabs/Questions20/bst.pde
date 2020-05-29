class BST {
  TreeNode root;
  TreeNode current;

  public BST() {
    root=null;
  }

  TreeNode buildTree() {
    root=new TreeNode("Do you like nature (left) or urban (right)?");
    //level one
    root.setLeft(new TreeNode("Nature (left)  or urban (right)?"));
    root.setRight(new TreeNode("Nature (left) or urban (right)?"));
    //level two
    root.getLeft().setLeft(new TreeNode("warm (left) or cold (right)?"));
    root.getRight().setRight(new TreeNode("warm (left) or cold (right)?"));
    root.getLeft().setRight(new TreeNode("warm (left) or cold (right)?"));
    root.getRight().setLeft(new TreeNode("warm (left) or cold (right)?"));

    //level three left sub tree
    root.getLeft().getLeft().setLeft(new TreeNode("Hana"));
    root.getLeft().getLeft().setRight(new TreeNode("New York"));
    root.getLeft().getRight().setLeft(new TreeNode("Yellowstone"));
    root.getLeft().getRight().setRight(new TreeNode("Chicago"));

    //level three right sub tree
    root.getRight().getRight().setRight(new TreeNode("Grand Canyon"));
    root.getRight().getRight().setLeft(new TreeNode("Eau Claire"));
    root.getRight().getLeft().setLeft(new TreeNode("San Francisco"));
    root.getRight().getLeft().setRight(new TreeNode("Split Rock"));
    current = root;
    return current;
  }
}
