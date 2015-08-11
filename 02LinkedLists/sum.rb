# sum(a, b) sums two linked lists where the head is the ones digit

require "../classes/linked_list.rb"

def sum(a,b)
    
    head = nil
    prev = nil
    carry = 0

    while !a.nil? || !b.nil? do
        x = if a.data.nil? then 0 else a.data end
        y = if b.data.nil? then 0 else b.data end

        node = LinkedListNode.new((x+y+carry)%10)

        carry = x+y >= 10 ? 1:0
        
        if head.nil?
            head = node
            prev = head
        else
            prev.next = node
            prev = prev.next
        end

        a = if a.next.nil? then nil else a.next end
        b = if b.next.nil? then nil else b.next end
        
    end

    if carry > 0
        node = LinkedListNode.new(carry)
        prev.next = node
    end
    return head
end

puts "Testing sum(a,b)"
a = LinkedList.new([9,2,9])
a.print_list
b = LinkedList.new([3,9,3])
b.print_list

sum = sum(a.head, b.head)

while !sum.nil? do
    print "[#{sum.data}]"
    sum = sum.next
end
