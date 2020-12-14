class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
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

  def get
    value = @head.value
    @head = @head.next_node
    value
  end
end
