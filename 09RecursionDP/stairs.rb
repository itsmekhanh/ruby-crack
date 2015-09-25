# A kid can only jump 1,2, or 3 steps at a time up the stairs. Given a height h,
# return the number of different ways the kid can jump up the stairs.

def jump(h, buffer={}) 
    if h < 0 
        return 0
    elsif h == 0 
        return 1
    elsif buffer[h] 
        return buffer[h] 
    end

    buffer[h] = jump(h-1, buffer)+jump(h-2, buffer)+jump(h-3, buffer)
    return buffer[h];
end

puts "Testing jump()"
puts "jump(6)"
puts jump(6)
