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
    @edges[vertex1][vertex2] = weight
    @edges[vertex2][vertex1] = weight
  end

  def remove_edge(vertex1, vertex2)
    if @edges[vertex1] && @edges[vertex1][vertex2]
      @edges.delete(@edges[vertex1][vertex2])
    end

    if @edges[vertex2] && @edges[vertex2][vertex1]
      @edges.delete(@edges[vertex2][vertex1])
    end
  end
end

# graph1 = UndirectedGraph.new
# graph1.add_vertex(1)
# graph1.add_vertex(2)

# puts graph1.edges

# graph1.add_edge(1, 2, 1)
# puts graph1.edges

puts 'Graph 2'
graph2 = UndirectedGraph.new

graph2.add_vertex(2)
graph2.add_vertex(5)
graph2.add_edge(2,5, 1)
puts graph2.edges
graph2.add_vertex(10)
graph2.add_vertex(23)
graph2.add_vertex(51)
graph2.add_vertex(25)
graph2.add_edge(5, 10, 2)
graph2.add_edge(10, 23, 4)
graph2.add_edge(23, 25, 2100)
p graph2.edges

graph2.remove_edge(10, 23)
p graph2.edges
