=begin
    replaceSpaces(string, length) - replaces all spaces in the string variable with '%20'
    given the string and the total length of the new string
=end

def replaceSpaces(string)
    tail = 0

    for tail in (0..string.length-1).to_a.reverse
        if string[tail] != " "
            break
        end
    end

    index = string.length-1

    while tail >= 0 && index >= 0 do
        if string[tail] != " "
            string[index] = string[tail]
            index -= 1
        else
            string[index] = "0"
            string[index-1] = "2"
            string[index-2] = "%"
            index -= 3
        end
        tail -= 1
    end

    return string
end

puts "Testing replaceSpaces(string)"
puts "a a...."+replaceSpaces("a a"+" "*2)
puts "aa...."+replaceSpaces("aa")
puts "a dog is crawling by me...."+replaceSpaces("a dog is crawling by me"+" "*(5*3-5))

