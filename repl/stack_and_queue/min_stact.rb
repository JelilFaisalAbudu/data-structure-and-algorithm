# Implement a Node class 
class Node
  attr_accessor :value, :next_node
  
  def initialize(value)
    @value = value
  end
end

class Stack
  attr_accessor :top, :min_tracker
  
  def initialize
    @top = nil
    @min_tracker = []
    
  end
  def push(number)
    # your code here
    new_node = Node.new(number)
    if @top.nil?
      @top = new_node
      @min_tracker << number
    else
      new_node.next_node = @top
      @top = new_node
      @min_tracker << number if number < @min_tracker[-1]
    end
  end
  
  def pop
    # your code here
    current_node = nil
    if @top.nil?
      current_node
    else
      current_node = @top
      @top = @top.next_node
      @min_tracker.delete(current_node.value) if current_node.value >= @min_tracker[-1]
    end
    current_node
  end
  
  def min
    # your code here
    @min_tracker[-1]
  end    

end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3