# convert(a,b) - write a function to determine the number of bits required to
# convert integer a into b

def convert(a,b)
    diff = a ^ b
    count = 0
    
    while diff > 0 do
        if diff & 1 > 0
            count += 1
        end
        diff = diff >> 1
    end
    return count
end

puts "Testing convert(a,b)..."
puts "convert(5,3)"
puts convert(5,3)
puts "convert(5,5)"
puts convert(5,5)
puts "convert(9,4)"
puts convert(9,4)
