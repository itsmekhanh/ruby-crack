# stacks.rb contains the stack class

require_relative "linked_list.rb"

class Stack
    def initialize(data = nil)
        @stack = nil
        @count = 0

        if !data.nil? && data.kind_of?(Array)
            self.fill_stack(data)
        end
    end
    
    def push(data)

        node = LinkedListNode.new(data)
        if @stack.nil?
            @stack = node
        else
            node.next = @stack
            @stack = node
        end

        @count += 1
        return true
    end

    def pop

        if !@stack.nil?
            data = @stack.data
            @stack = @stack.next
            @count -= 1
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

        while !w.nil? do
            print "[#{w.data}]"
            w = w.next
        end
        print "\n"
    end

    def empty?
        return @count == 0
    end

    def fill_stack(data)
        
        for i in 0..data.length-1
            self.push(data[i])
        end
    end
end
