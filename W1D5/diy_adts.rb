class Stack

    def initialize
        @storage = []
    end

    def push(el)
        @storage << el
    end

    def pop
        @storage.pop 
    end

    def peek
        @storage[-1]
    end
end

# stacks = Stack.new
# stacks.push("el")
# p stacks 
# stacks.push("second")
# p stacks 
# stacks.push("third")
# p stacks 
# stacks.pop 
# p stacks.peek 
# p stacks

class Queue

    def initialize
        @line = []
    end

    def enqueue(el)
        @line << el  
    end

    def dequeue
        @line.shift
    end

    def peek
        @line[0]
    end

end

q = Queue.new 

# q.enqueue("first")
# q.enqueue("second")
# q.enqueue("third")
# p q 
# q.dequeue
# p q  
# p q.peek

class Map


    def initialize
        @map = []

    end

    def set(key,value)
        @map << [key, value]
    end

    def get(key)
        @map.each do |sub|
            if sub.include?(key)
                return key 
            end
        end
    end

    def delete(key)
        @map.each do |sub|
            if sub.include?(key)
                sub.delete(key)
            end
        end
    end

    def show
        p @map
    end
end

maps = Map.new 

maps.set("key", 9)
maps.set("val", 8)
maps.set("third", 6)
maps.show 
p maps.get("val") 
maps.delete("third")
p maps
maps.show
