
def max_sliding_window(nums, k)
  result = []
  nums.each_with_index do |_, i|
    result.push(nums.slice(i, k).max) if i <= nums.size - k
  end
  result
end

p max_sliding_window([1,3,-1,-3,5,3,6,7], 3)
