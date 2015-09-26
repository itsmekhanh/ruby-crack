# subset - write a method to return all subsets of a set

def subset(arr, start=0)
  if start > arr.length-1
    return []
  end

  value = arr[start]
  result = [[value]]

  subsets = subset(arr, start+1)

  subsets.each do |subset|
    result << subset
    result << (subset + result[0])
  end

  return result
end

puts "Testing subset()"
puts "subset([1,2,3])"
result = subset([1,2,3])

result.each do |subset|
  subset.each do |value|
    print "[#{value}]"
  end
  print "\n"
end