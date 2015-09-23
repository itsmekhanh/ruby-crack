# double_to_binary(d) - this function takes a double and converts to a binary

def double_to_binary(d)
    count = 0
    binary = "."
    while d != 0 && count < 32 do
        d = d*2
        
        binary += if d >= 1 then "1" else "0" end 
        
        if d >= 1
            d = d-1
        end
        count += 1
    end

    if count >= 2
        return "ERROR"
    else
        return binary
    end
end

puts "Testing double_to_binary"
puts "double_to_binary(0.5)"
puts double_to_binary(0.5)
puts "double_to_binary(0.75)"
puts double_to_binary(0.75)
puts "double_to_binary(.70)"
puts double_to_binary(0.70)
puts "double_to_binary(.2)"
puts double_to_binary(0.2)
