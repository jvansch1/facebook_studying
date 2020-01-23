require 'byebug'

# Graph represent as Node: Neighbors
# {
#   A: [B, C],
#   B: [D]
# }

class Graph
  def initialize(graph_hash)
    @graph_hash = graph_hash
  end

  def vertices
    @graph_hash.keys
  end

  def generate_edges
    edges = []

    @graph_hash.each do |vertex, neighbors|
      neighbors.each do |neighbor|
        edges << "(#{vertex}, #{neighbor})"
      end
    end

    edges
  end

  def find_path(start_vertex, end_vertex, path = [])
    path << start_vertex

    if start_vertex == end_vertex
      return path
    # if the vertex is not part of the grapg return nil
    elsif @graph_hash[start_vertex.to_sym].nil?
      return nil
    else
      @graph_hash[start_vertex.to_sym].each do |vertex|
        # path from_neighbor to the end_node
        extended_path = find_path(vertex, end_vertex, path)

        # find a path from each of the neighbors to the target node

        if extended_path
          return extended_path
        end
      end
    end
  end
end

graph_hash = {
  "A": ["B", "C"],
  "B": ["D"]
}

graph = Graph.new(graph_hash)
p graph.generate_edges
p graph.find_path("A", "D")
