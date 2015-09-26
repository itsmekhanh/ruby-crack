# a magic index in an array A[0...n-1] is defined to be an index such that A[i] = i.
# given a sorted array of distinct integers, write a method to find a magic index,
# if one exists

def magic_index(arr, left, right)

  if left > right
    return false
  end

  mid = ((left+right)/2).floor

  if mid == arr[mid]
    return mid
  end

  result = false

  # go left
  if mid > 0
    if arr[mid-1] < mid-1
      result = magic_index(arr, left, arr[mid-1])
    else
      result = magic_index(arr, left, mid-1)
    end

    if result
      return result
    end
  end

  # go right
  if mid < arr.length-1
    if arr[mid+1] > mid+1
      result = magic_index(arr, arr[mid+1], right)
    else
      result = magic_index(arr, mid+1, right)
    end

    if result
      return result
    end
  end

  return result
end

puts "Testing magic_index"
puts "magic_index([1,2,4,4,4,6])"

arr = [1,2,4,4,4,6]
puts "magic_index(2,3,3,3,6,6,6,7,7)"
puts magic_index(arr, 0, arr.length-1)

arr = [2,3,3,4,6,6,6,8,10]
puts magic_index(arr,0,arr.length-1)