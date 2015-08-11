=begin

isUnique(string) is a function that takes in a string and
determines whether or not all the characters are unique.

=end

def isUnique(string)
    buffer = {}
    
    if string.length == 0
        puts "String is empty!"
        return false
    end

    for i in 0..string.length-1
        if buffer[string[i]]
            puts "String is not unique."
            return false
        else
            buffer[string[i]] = 1
        end
    end
    puts "String is unique"
    return true
end

puts "Testing isUnique() function"
puts "...String is abcd"
isUnique("abcd")
puts "...String is aba"
isUnique("aba")
puts "...String is abba"
isUnique("abba")
puts "...String is ''"
isUnique("")
