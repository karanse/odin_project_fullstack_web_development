def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false

    (n - 1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i] # Swap elements
        swapped = true
      end
    end

    break unless swapped
  end

  arr
end

bubble_sort([4, 3, 78, 2, 0, 2])
# [0,2,2,3,4,78]

bubble_sort([3, 8, 90, 45, 32, 9, 2, 0])
