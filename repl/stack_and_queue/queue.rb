# Start with your code from LinkedList challenge.
require_relative './linked_list'

class Stack
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end
  
  def push(number)
    # your code here
    @list.add(number)
  end
  
  def pop
    # your code here
    @list.get
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3