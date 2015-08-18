# this file tests the BinarySearchTree data structure

require "../tree.rb"

puts "Testing BinaryTree class"

tree = BinarySearchTree.new

tree.insert(10)
tree.insert(5)
tree.insert(15)
tree.insert(13)
tree.insert(20)
tree.insert(1)
tree.insert(7)

tree.print_tree

puts tree.remove(7)
puts tree.remove(5)
puts tree.remove(15)
tree.print_tree
