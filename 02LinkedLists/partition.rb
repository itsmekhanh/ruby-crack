# partition(x) will partition a linked list where nodes less than x comes
# before x and nodes greater than or equal to x will be connected after
# x

require "../classes/linked_list.rb"

puts "Testing partition(x)"

list = LinkedList.new([1,5,6,4,2,3,7])

list.print_list

list.partition(4)

list.print_list
