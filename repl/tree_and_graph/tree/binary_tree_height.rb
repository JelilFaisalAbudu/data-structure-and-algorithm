# Define a node class to transform array into node
class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def binary_tree_height(array_tree)
  # write your code here
  # A helper method to convert the arrqy to binary tree
  def array_to_tree(array, i)
    return nil if i >= array.length

    node = Node.new(array[i])
    node.left = array_to_tree(array, 2 * i + 1)
    node.right = array_to_tree(array, 2 * i + 2)

    node
  end

  # Helper method to find the height of the tree
  def height(tree)
    return 0 if tree.nil?

    left_height = height(tree.left)
    right_height = height(tree.right)

    left_height > right_height ? left_height + 1 : right_height + 1
  end

  # Call all the helper methods here
  height(array_to_tree(array_tree, 0))
end
