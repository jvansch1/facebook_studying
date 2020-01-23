class Node

  attr_accessor :value, :neighbors

  def initialize(value, neighbors = [])
    @value = value
    @neighbors = neighbors
  end
end

class Graph
  def initialize(root)
    @root = root
  end

  def print_bfs
    nodes_to_visit = [@root]

    while !nodes_to_visit.empty?
      current_node = nodes_to_visit.shift
      print current_node.value.to_s + "->"

      current_node.neighbors.each do |neighbor|
        nodes_to_visit.unshift(neighbor)
      end
    end
  end

  def print_dfs(current_node = @root)
    current_node.neighbors.each do |neighbor|
      print_dfs(neighbor)
    end

    print current_node.value.to_s + "->"
  end
end

root_neighbors = [Node.new(2, [Node.new(4), Node.new(5)]), Node.new(3, [Node.new(6), Node.new(7)])]
root_node = Node.new(1, root_neighbors)
graph = Graph.new(root_node)

graph.print_bfs
print "\n"
graph.print_dfs
