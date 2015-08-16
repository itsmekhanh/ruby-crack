# MyQueue - a class that implements a Queue using two stacks

require "../classes/queue.rb"

puts "Testing MyQueue"
queue = MyQueue.new

queue.enqueue(1)
queue.enqueue(2)

queue.print_queue
