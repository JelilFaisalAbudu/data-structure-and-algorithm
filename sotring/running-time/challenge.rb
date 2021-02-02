def running_time(array)
  arr_size = array.length
  counter = 0
  (1...arr_size).each do |index|
    counter += sort_single(array, index)
  end
  counter
end

def sort_single(array, index)
  counter = 0
  position = index
  temp_value = array[index]

  while position.positive? && array[position - 1] > temp_value 
    array[position] = array[position - 1]
    position -= 1
    array[position] = temp_value
    counter += 1
  end
  counter
end

p running_time([2, 1, 3, 1, 2])
# => 4

