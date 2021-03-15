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

    def bfs(starting_node, target_value)
        
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
p a 