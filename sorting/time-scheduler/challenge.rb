def time_scheduler(array)
  # write your code here

  events = (0...array.size).step(2)
    .map { |index| [array[index], array[index + 1]] }
    .sort_by! { |event| event[1] }
  
  result = [events[0]]

  for index in 1...events.size
    result << events[index] unless result[-1][1] > events[index][0]
  end

  result
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]
