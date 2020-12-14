def bfs(graph)
  # write your code here
  path = []
  queue = Queue.new
  
  curr_node = graph.keys[0]
  queue << curr_node
  path << curr_node
  
  until queue.empty?
    curr_node = queue.pop
    graph[curr_node].each do |  vertex  |
      if !path.include?(vertex)
        path << vertex
        queue << vertex
      end
    end
  end
  path
end

p bfs({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]