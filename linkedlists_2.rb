class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

#stack class
class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        @data = LinkedListNode.new(value, @data)
    end

    def pop
        #stores the value at the top of the stack
        if @data != nil
            value = @data.value
            @data = @data.next_node
            value
        else
            puts "empty stack"
        end
    end

end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list, previous=nil)
  # do stuff
  if list
    nextnode = list.next_node
    list.next_node = previous
    reverse_list(nextnode, list)
  else
    previous
  end
  end
  
  def isInfinite(list)
  turtle = list.next_node
  rabbit = list.next_node

  while rabbit != nil
    rabbit = rabbit.next_node
    if rabbit == nil
        return false
        puts "I'm in here"
    end
    
    rabbit = rabbit.next_node
    turtle = turtle.next_node
    
    if turtle == rabbit
        puts "help me"
        return true
    end
  end
  return false
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(22, node2)
node4 = LinkedListNode.new(69, node3)
node5 = LinkedListNode.new(420, node4)

print_values(node5)

puts "-------"

revlist = reverse_list(node5)
puts isInfinite(node5)

print_values(revlist)