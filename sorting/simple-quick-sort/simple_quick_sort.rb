def simple_quick_sort(array)
  quick_sort!(array, 0, array.size - 1)
  array
end

def quick_sort!(array, left_index, right_index)
  return array if right_index - left_index <= 0

  pivot_position = partition!(array, left_index, right_index)

  quick_sort!(array, left_index, pivot_position - 1)
  quick_sort!(array, pivot_position + 1, right_index)
end

def partition!(array, left_pointer, right_pointer)
  pivot_position = right_pointer
  pivot = array[pivot_position]
  right_pointer -= 1

  loop do
    left_pointer += 1 while array[left_pointer] < pivot
    right_pointer -= 1 while array[right_pointer] > pivot

    break if left_pointer >= right_pointer

    swap(array, left_pointer, right_pointer)
  end
  swap(array, left_pointer, pivot_position)
  puts array.join(' ')
  left_pointer
end

def swap(array, position_one, position_two)
  temp_value = array[position_one]
  array[position_one] = array[position_two]
  array[position_two] = temp_value
end
# p simple_quick_sort([0, 5, 2, 1, 6, 3])
p simple_quick_sort([1, 3, 9, 8, 2, 7, 5])
# p partition!([4, 5, 3, 9, 1], 0, 4)
# p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]
