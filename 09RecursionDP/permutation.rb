# permutation(string) - returns the permutations of a given string

def permutation(str, index=0)
  if index >= str.length-1
    return [str[index]]
  end
  
  letter = str[index]
  permutations = []

  subsets = permutation(str, index+1)

  subsets.each do | string |
    permutations << (letter+string)

    for i in 1..string.length-1
      permutations << (string[0,i]+letter+string[i,string.length-i])
    end
    permutations << (string+letter)
  end
  return permutations
end

puts "Testing permutation()"
result = permutation("abc")

result.each do |string|
  puts string
end
