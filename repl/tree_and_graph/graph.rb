# Representing graphs

def graph(hash_graph)
  visited_nodes = []
  curr_node = hash_graph.keys[0]
  visited_nodes << curr_node

  until curr_node == 4
    curr_node = hash_graph[curr_node][0]
    visited_nodes << curr_node
  end
  visited_nodes
end

hash = {
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]
