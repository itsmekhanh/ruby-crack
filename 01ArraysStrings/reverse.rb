=begin

reverse(string) is a function that takes in a string and reverses the string

=end

def reverse(string)
    length = string.length

    for i in 0..length/2-1
        #swap the letters
        temp = string[i]
        string[i] = string[length-1-i]
        string[length-1-i] = temp
    end
    return string
end

puts "Testing reverse()"
puts "reverse('Hello')...."+reverse("Hello")
puts "reverse('abcd')...."+reverse('abcd')
