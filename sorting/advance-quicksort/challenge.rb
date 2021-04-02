def advanced_quicksort(array)
  quick_sort!(array, 0, array.size - 1)
end

def quick_sort!(array, start_index, end_index)
  return array if start_index >= end_index || array.clone.sort == array

  pivot_index = partition!(array, start_index, end_index)
  
  p array

  # Recursively sort the sub-arrays
  quick_sort!(array, start_index, pivot_index - 1)
  quick_sort!(array, pivot_index + 1, end_index)
end

def partition!(array, start_index, end_index)
  pivot = array[end_index]

  pos_tracker = start_index

  for index in start_index...end_index
    if array[index] < pivot
      swap(array, index, pos_tracker)
      pos_tracker += 1
    end
  end

  swap(array, end_index, pos_tracker)

  pos_tracker
end

def swap(array, pos_one, pos_two)
  array[pos_one], array[pos_two] = array[pos_two], array[pos_one]
end
