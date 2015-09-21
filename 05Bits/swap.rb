# swap(a) - write a function that swaps the odd and even bits in the integer a

def swap(a)
   odd = a & 0xAAAAAAAA
   even = a & 0x55555555

   return (odd >> 1) | (even << 1)
end

puts "Testing swap(a)..."
puts "Testing swap(10)"
puts swap(10)
puts "Testing swap(12)"
puts swap(12)
puts "Testing swap(9)"
puts swap(9)
