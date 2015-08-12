# stacks.rb contains the stack class

require_relative "linked_list.rb"

class Stack
    
    
    def initialize
        @stack = nil
    end
    
    def push(data)

        node = LinkedListNode.new(data)
        if @stack.nil?
            @stack = node
        else
            node.next = @stack
            @stack = node
        end
        return true
    end

    def pop

        if !@stack.nil?
            data = @stack.data
            @stack = @stack.next
            return data
        else
            return nil
        end
    end

    def top
        
        if !@stack.nil?
            return @stack.data
        else
            return nil
        end
    end

    def print_stack
        w = @stack

        while w.nil? do
            print "[#{w.data}]"
            w = w.next
        end
        print "\n"
    end
end
