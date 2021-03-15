require "set"
class GraphNode

    attr_reader :neighbors 
    attr_accessor :value 
    def initialize(value)
        @value = value 
        @neighbors = []
    end

    def neighbors=(arr)
        @neighbors += arr 
    end

    def inspect
    end

    def bfs(starting_node, target_value)
        starting_node.neighbors.each do |neighbor|
            if !neighbor.neighbors.empty?
                if neighbor.value == target_value
                    return neighbor.value 
                else 
                    neighbor.neighbors.each do |child|
                        if child.value == target 
                            return child.value 
                        end
                    end
                end
            end
        end

    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
p bfs(a, "b") 