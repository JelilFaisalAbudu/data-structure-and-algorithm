def depth_first_search(graph)
  # write your code here
  result = []
  stack = []
  curr_node = graph.keys.first
  
  stack<< curr_node
  
  until stack.empty?
    curr_node = stack.pop
    result << curr_node unless result.include?(curr_node)
    graph[curr_node].reverse_each do |node|
      stack << node unless result.include?(node)
    end
  end
      
  
  result
  
end


p depth_first_search({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 4, 1, 3]

p depth_first_search({
  0=>[1, 2],
  1=>[0, 3, 4],
  2=>[0, 5, 6],
  3=>[1],
  4=>[1, 5],
  5=>[2, 4],
  6=>[2]
  
})
# => [0, 1, 3, 4, 5, 2, 6]