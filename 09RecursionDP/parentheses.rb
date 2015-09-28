# implement an algorithm to print all valid combinations of n-pairs of

def parentheses(left, right, str="")
    if right < left || (right == 0 && left == 0)
        puts str
        return
    end

    if(left > 0)
        parentheses(left-1, right, str+"(")
    end
        
    if(right > left)
        parentheses(left, right-1, str+")")
    end
end

puts "Testing parentheses"
puts "parentheses(3,3)"
parentheses(3,3)
