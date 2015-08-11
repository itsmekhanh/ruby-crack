#
# remove_duplicates (n) will remove duplicates in a singly linked list
#
# #

require "../classes/linked_list.rb"

puts "Testing remove_duplicates(n)"
list = LinkedList.new([1,2,1,3,4,4,5])

puts "OLD"
list.print_list
list.remove_duplicates

puts "NEW"
list.print_list

puts "OLD"
list = LinkedList.new([1,2,2])
list.print_list

list.remove_duplicates
puts "NEW"
list.print_list
