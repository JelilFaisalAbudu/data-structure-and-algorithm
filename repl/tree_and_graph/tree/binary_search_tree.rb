# This algorithm uses the iterative mechanism to form the tree with the help of the Node class
class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  def insert(new_node)
    parent = nil
    current = @root

    until current.nil?
      parent = current
      if new_node.data <= current.data
        current = current.left
      elsif new_node.data > current.data
        current = current.right
      end
    end

    if parent.nil?
      @root = new_node
    elsif new_node.data <= parent.data

      parent.left = new_node
    elsif new_node.data > parent.data

      parent.right = new_node
    end
  end

  def pre_order(node = @root)
    # implementation from the previous challenge
    return '' if node.nil?

    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
end

def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
