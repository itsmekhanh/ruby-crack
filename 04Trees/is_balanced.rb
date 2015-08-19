# is_balanced - determines whether or not a tree is balanced such that
# the height between its two subtrees is no more than 1 distance apart.

require "../classes/tree.rb"

puts "Testing is_balanced"
tree = BinarySearchTree.new

tree.insert(10)
tree.insert(5)
tree.insert(20)


tree.print_tree
puts tree.is_balanced
