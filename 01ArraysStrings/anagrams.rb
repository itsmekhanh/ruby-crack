=begin
    anagrams(a, b) is a function that determines whether or not strings 
    a and b are anagrams
=end

def areAnagrams(a,b)
    buffer = {}
    diff = 0 
    for i in 0..a.length-1
        x = a[i]
        y = b[i]

        if buffer[x].nil?
            buffer[x] = 1
            diff += 1
        elsif buffer[x]+1 == 0
            diff -= 1
        else
            diff += 1
        end

        if buffer[y].nil?
            buffer[y] = -1;
            diff += 1
        elsif buffer[y]-1 == 0
            buffer[y]--
            diff -= 1
        else
            diff += 1
        end
    end

    if diff == 0
        return "Yes, they are anagrams"
    else
        return "No, they are NOT anagrams"
    end
end

puts "Testing areAnagrams()"
puts "dog and god...."+areAnagrams("dog", "god")
puts "cat and dog...."+areAnagrams("cat", "dog")
puts "aab and bba...."+areAnagrams("aab", "bba")
puts "aab and baa...."+areAnagrams("aab", "baa")
