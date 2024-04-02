def stock_picker(array)
  diff = []
  num = array[0]
  idx = 0
  # iterate each value and check if it's greater than previous, and caluclate the earn
  array.each_with_index do |value, value_idx|
    if value < num
      num = value
      idx = array.index(value)
    else
      diff.push([(value - num), idx, value_idx])
    end
  end
  sorted_array = diff.sort_by { |sub_array| -sub_array[0] }
  sorted_array[0][1..]
end
