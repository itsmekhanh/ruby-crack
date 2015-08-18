# Queue is a class that uses a Linkedlist object to implement a Queue data
# structure

require_relative "linked_list.rb"
require_relative "stack.rb"

class Queue
    
    def initialize
        @head = nil
        @tail = nil
    end

    def queue(data)
        node = LinkedListNode.new(data)

        if @head.nil?
            @head = node
            @tail = @head
        else
            @tail.next = node
            @tail = node
        end
    end

    def dequeue
        if @head.nil?
            return nil
        else
            data = @head.data
            @head = @head.next
            return data
        end
    end

    def top
        if @head.nil?
            return nil
        else
            return @head.data
        end
    end

    def print_queue
        w = @head

        while !w.nil? do
            print "[#{w.data}]"
            w = w.next
        end
    end

    def empty?
        return @head.nil?
    end
end

class MyQueue
    
    def initialize
        @old = Stack.new
        @new = Stack.new
    end

    def enqueue(data)
        @new.push(data)
    end

    def dequeue(data)
        self.switch
        return @old.pop
    end

    def switch
        if @old.empty?
            while !@new.empty? do
                @old.push(@new.pop);
            end
        end
    end

    def top
        self.switch
        return @old.top
    end

    def print_queue
        puts "Old Stack" 
        @old.print_stack
        
        puts "New Stack"
        @new.print_stack
    end
end
