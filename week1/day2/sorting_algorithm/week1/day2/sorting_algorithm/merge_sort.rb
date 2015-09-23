# Sort the array from lowest to highest
def merge_sort(arr)
  # return arr is arr has 1 variable
  return arr if arr.length <= 1
  # left = arr[0..2]
  left = merge_sort arr[0, arr.length / 2]
  # right = arr[2..4]
  right = merge_sort arr[arr.length / 2, arr.length]

  # call merge method
  merge(left, right)
end

def merge(left, right)
  # empty array
  result = []

  # loops if both left and right is greater than 0
  while left.length > 0 && right.length > 0
    # push first array in left if left is greater than right first array
    result << if left[0] <= right[0]
      left.shift
    else
      right.shift
    end
  end
  # result + left + right
  result.concat(left).concat(right)
end

# Find the maximum 
def maximum(arr)
  merge_sort(arr).last
end

def minimum(arr)
  merge_sort(arr).first
end
 
# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = minimum([2, 42, 22, 02])
puts "min of 2, 42, 22, 02 is: #{result}"
 
# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"
result = minimum([])
puts "min on empty set is: #{result.inspect}"
 
result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"
 
result = maximum([6])
puts "max of just 6 is: #{result}"