# make some random rocks
rocks = 30.times.map{rand(200) + 1}
puts rocks.join(', ')

def rock_judger(arr)
  if arr.length <= 2 # base case
    a = arr[0]
    b = arr[-1]
  else
    # when you slice destructively, it returns the first half but arr is not he remaining alf of the array
    a = rock_judger(arr.slice!(0, arr.length/2))
    b = rock_judger(arr)
  end
  p a
  p b
  return p a > b ? a : b
end
puts "Heaviest rock is: #{rock_judger(rocks)}"
rocks_edge = [1]
puts "Heaviest rock is: #{rock_judger(rocks_edge)}"
