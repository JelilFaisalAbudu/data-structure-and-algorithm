# Linked List algo
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  attr_accessor :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    # your code here
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
      @tail = new_node.next_node
      return
    end
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = new_node
  end

  def get(index)
    # your code here
    current_node = @head
    index.times do
      current_node = current_node.next_node
      return 'Not found...' unless current_node
      # puts 'a node'
      # puts current_node.value
    end
    current_node.value
  end
  
  def add_at(index, item)
    current_node = get_node(index)
    new_node = Node.new(item)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end
  
  def remove(index)
    prev_node = get_node(index - 1)
    current_node_to_remove = get_node(index)
    next_node_to_join = current_node_to_remove.next_node
    prev_node.next_node = next_node_to_join
    
  end
  
  private
  
  def get_node(index)
    current_node = @head
    
    index.times do
      current_node.next_node
      
    end
    current_node
  end
end
