class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end 
end

class LinkedList
  attr_accessor :head, :next

  def initialize
    @head = nil
    @next = nil
  end

  def add_at_front(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def add_at_end(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end
end

linked_list = LinkedList.new
linked_list.add_at_front(23)
puts linked_list.head.data
linked_list.add_at_front(2)
puts linked_list.head.data
linked_list.add_at_end(5)
puts linked_list.head.data
