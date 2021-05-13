# -------------------------------
# -- Undirected Weighted Graph --
# -- ----------------------------

# => Undirected graph should have an object to store the edges.

# By using the adjacency list approach.
# 1. Initialize an empty object(e.g, edges = {}) to store the edges.
# 2. The vertices would serve as keys as well as objects inside which the edge values are stored.
# 
class UndirectedGraph
  attr_accessor :edges
  def initialize
    @edges = {}
  end

  def add_vertex(vertex)
    @edges[vertex] = {}
  end

  def add_edge(vertex1, vertex2, weight = nil)
    weight = 0 if weight.nil?
    # 
    @edges[vertex1][vertex2] = weight
    @edges[vertex2][vertex1] = weight
  end
end

graph1 = UndirectedGraph.new
graph1.add_vertex(1)
graph1.add_vertex(2)

puts graph1.edges

graph1.add_edge(1, 2, 1)
puts graph1.edges