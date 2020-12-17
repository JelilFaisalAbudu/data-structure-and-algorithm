def connected_graph?(graph)
  depth_first_search(graph).length == graph.keys.length
end

def depth_first_search(graph)
  result = []
  stack = []
  curr_node = graph.keys.first

  stack << curr_node

  until stack.empty?
    curr_node = stack.pop
    result << curr_node unless result.include?(curr_node)
    graph[curr_node].reverse_each do |node|
      stack << node unless result.include?(node)
    end
  end

  result
end

puts connected_graph?(
  {
    0 => [2],
    1 => [4],
    2 => [0, 5, 3],
    3 => [5, 2],
    4 => [5, 1],
    5 => [4, 2, 3]
  }
)

# => true

puts connected_graph?(
  {
    0 => [1, 2],
    1 => [0, 2],
    2 => [0, 1, 3, 4, 5],
    3 => [2, 4],
    4 => [3, 2],
    5 => [2]
  }
)

# => true
