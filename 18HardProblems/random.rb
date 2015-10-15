# write a method to randomly generate a set of m integers from an array of size
# n. Each element must have an equal probability of 1/n

def random(nums)
  n = nums.length
  
  while n > 0 do
    if rand(1..n) == 1
      return nums[n-1]
    else
      n -= 1
    end
  end
end

puts "Testing random()"
puts random([1,2,3,4,5]);
