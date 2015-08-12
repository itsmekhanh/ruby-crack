# palindrome (l) - determines if a linked list l is a palindrome.

require "../classes/linked_list.rb"

puts "Testing palindrome()"
list = LinkedList.new([1,2,3,2,1])
list.print_list
list.palindrome

list = LinkedList.new([1,2,2,4])
list.print_list
list.palindrome

list = LinkedList.new([1,2,2,1])
list.print_list
list.palindrome
