# Convert array to tree for binary tree implementation

# Define a node class
class Node
  attr_reader :data # root node
  attr_accessor :left, :right # the branches of the nodes

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, i)
  return nil if i >= array.length || array[i].zero? # The array index can't be >= array size(base condition)

  node = Node.new(array[i]) # instantiate the Node. This assigns the element to @data
  node.left = array_to_tree(array, 2 * i + 1) # recursively assign elements to the left node or return if the base condition is met
  node.right = array_to_tree(array, 2 * i + 2) # recursively assign elements to the right node or return if the base condition is met

  node
end

def pre_order(node)
  return '' if node.nil?

  result = "#{node.data} "
  result += pre_order(node.left)
  result + pre_order(node.right)
end

def post_order(node)
  return '' if node.nil?

  result = post_order(node.left)
  result += post_order(node.right)
  result + "#{node.data} "
end

p post_order(array_to_tree([3, 5, 32, 4, 5, 1], 0))
