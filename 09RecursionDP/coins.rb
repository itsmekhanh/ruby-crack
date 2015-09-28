# given an infinite number of quarters, dimes, nickels, and pennies, write code
# to calculate the number of ways of representing n cents

def coins(n, position=0)
  count = 0
  values = [25,10,5,1]

  if position > values.length-1 || position < 0
    return
  end

  if n == 0
    return 1
  else
      while position < values.length
        if(n >= values[position])
          count += coins(n-values[position], position)
        end
        position += 1
      end
  end
  return count
end

puts "Testing coins()"
puts coins(25)
