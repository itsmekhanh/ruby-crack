# sort(s) - this function sorts a stack, with the highest value at the top
# of the stack.

require "../classes/stack.rb"

def sort(s)
    temp = Stack.new

    while(!s.empty?) do
        data = s.pop
        while( !temp.empty? && data < temp.top ) do
            s.push(temp.pop)
        end

        temp.push(data)
    end
    return temp
end

puts "Testing sort(S)"
stack = Stack.new([4,2,5,6,1,7,3]);
stack.print_stack
puts "Sorting..."
stack = sort(stack)
stack.print_stack

