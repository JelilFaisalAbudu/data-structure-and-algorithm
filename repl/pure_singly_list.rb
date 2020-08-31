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

  def add(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      @head = new_node
      @head.next_node = current_node
    end
  end

  def get(index)
    # your code here
    current_node = @head
    index.times do
      current_node = current_node.next_node
      return 'Not found...' unless current_node
    end
    current_node.value
  end
  
  def add_at(index, item)
    # current_node = @head
    new_node = Node.new(item)
    
    # if the current_node/@head is empty, insert the new_node there
    if @head.nil?
      @head = new_node
    elsif index == 0
      new_node.next_node = @head
      @head = new_node
    else
      current_node = get_node(index - 1)
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
    end
  end
  
  def remove(index)
    if @head.nil?
      nil
    elsif index == 0
      current_node = @head
      @head = current_node.next_node
    else
      node_to_remove = get_node(index)
      before_next_node = get_node(index - 1)
      before_next_node.next_node = node_to_remove.next_node
    end
  end
  
  def print_all_nodes
    current_node = @head
    while !current_node.next_node.nil?
      puts current_node.value
      current_node = current_node.next_node
    end
  end
  
  private
  
  def get_node(index)
    current_node=@head
    index.times do
      current_node=current_node.next_node
    end
    current_node
  end
 end

 linked_list = LinkedList.new

 linked_list.add(3)
 puts linked_list.get(0)
 puts linked_list.get(2)
