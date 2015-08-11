# kth_element (h) finds the kth to last element in a linked list starting
# with node h

require "../classes/linked_list.rb"

puts "Testing kth_element(h)"

list = LinkedList.new([1,2,3,4,5])

puts "In list [1][2][3][4][5], getting 2nd to last element."

k = list.kth_element(2)

puts "[#{k.data}]"
