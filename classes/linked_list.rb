# LinkedListNode is a class that contains a data field and a next pointer.
# The next pointer points to the next LinkedList node, thus creating a
# LinkedList data structure

class LinkedListNode

    attr_accessor :data
    attr_accessor :next

    def initialize(data)
        @data = data
        @next = nil
    end
end

# LinkedList is a class that replicates the linked list data structure

class LinkedList
    
    attr_accessor :head

    def initialize(data=nil)
        @head = nil
        if !data.nil?
            self.fill_list(data)
        end
    end

    def append(data)
        node = LinkedListNode.new(data)
        if @head.nil?
            @head = node
        else
            w = @head
            
            while !w.next.nil? do
                w = w.next
            end
            w.next = node
        end
    end

    def remove(data)
        if !@head.nil
            if @head.data == data
                @head = @head.next
                return true
            else
                prev = @head
                w = @head.next
                while !w.next? do
                    if w.data == data
                        if w.next.nil?
                            prev.next = nil
                        else
                            w.data = w.next.data
                        end
                    end
                    prev = w
                    w = w.next
                end
            end
        else
            false
        end
    end

    def print_list
        w = @head
        while !w.nil? do
            print "[#{w.data}]"
            w = w.next
        end
        print "\n"
    end

    def fill_list(data)
        if data.kind_of?(Array)
            for i in 0..data.length-1
                self.append(data[i])
            end
            return true
        else
            return false
        end
    end

    # 2.1
    def remove_duplicates
        w = @head
        prev = nil
        buffer = {}

        while !w.nil? do
            if buffer[w.data].nil?
                buffer[w.data] = 1
            else
                if w.next.nil?
                    if !prev.nil?
                        prev.next = nil
                    end
                else
                    w.data = w.next.data
                    w.next = w.next.next
                end
            end
            prev = w
            w = w.next
        end
        return true
    end

    #2.2
    def kth_element(k)
        a = @head
        b = @head
        count = 1

        while !b.next.nil? && count < k
            b = b.next
            count += 1
        end

        while !b.next.nil?
            b = b.next
            a = a.next
        end
        return a
    end

    #2.4
    def partition(x)
        w = @head
        visited = false
        greater_list_head = nil
        greater_list_tail = nil
        prev = nil

        while !w.next.nil?
            if w.data == x
                visited = true
            elsif w.data >= x && !visited
                if prev.nil?
                    @head = w.next
                    greater_list_head = w
                    greater_list_head.next = nil
                    greater_list_tail = greater_list_head
                
                else
                    prev.next = w.next
                    if greater_list_head.nil?
                        greater_list_head = w
                        greater_list_head.next = nil
                        greater_list_tail = greater_list_head
                    else
                        greater_list_tail.next = w
                        greater_list_tail = greater_list_tail.next
                        greater_list_tail.next = nil
                    end
                end
                w = prev.next
                next
                 
            elsif w.data < x && visited
                prev.next = w.next
                w.next = @head
                @head = w
                w = prev.next
                next
            end
            prev = w
            w = w.next
        end

        w.next = greater_list_head
        return true
    end
end
