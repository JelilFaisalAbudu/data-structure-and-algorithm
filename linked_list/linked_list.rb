class Node

  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
  end 
end

class LinkedList
  attr_accessor :root_node

  def initialize(root_node)
    @root_node = root_node
  end

  def read(index)
    current_node = @root_node
    current_index = 0

    while current_index < index
      current_node = current_node.next_node
      current_index += 1

      return -1 unless current_node
    end
    current_node.data
  end

  def index_of(data)
    current_node = root_node
    current_index = 0

    begin
      return current_index if current_node.data == data

      current_node = current_node.next_node
      current_index += 1
    end while current_node
    -1
  end

  def insert_at_index(index, data)
    current_node = @root_node

    if index == 0
      current_node
    else
      current_index = 0

      while current_index < index - 1
        current_node = current_node.next_node
        current_index += 1
      end
    end

    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end
end

node_1 = Node.new(1)
node_2 = Node.new(2)
node_1.next_node = node_2

node_3 = Node.new(3)
node_2.next_node =node_3

node_4 = Node.new(4)
node_3.next_node = node_4

list = LinkedList.new(node_1)

puts list.read(2)

puts list.index_of(2)
puts list.index_of(100)

list.insert_at_index(2, 6)
puts list.index_of(6)
puts list.read(2)
puts list.read(3)
