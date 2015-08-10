=begin
    compress(string) - a function that compresses adjacent characters within a string into one
    example: aaabb = a3b2
=end

def compress(string)
    count = 1
    s = ""
    for i in 1..string.length-1
        if string[i] != string[i-1]
            s += string[i-1]+"#{count}"
            count = 0
        end
        count += 1
    end
    s += string[i]+"#{count}"
end

puts "Testing compress()"
puts "aabb...."+compress("aabb")
puts "abcd...."+compress("abcd")
puts "aaabcc...."+compress("aaabcc")
