def quick_sort(array)
  cloned_array = array.clone
  for outer_index in 0...array.length do
    inner_index = outer_index
    
    while inner_index > 0 && cloned_array[inner_index - 1] > cloned_array[inner_index]
      swap(cloned_array, inner_index - 1, inner_index)
      inner_index = inner_index - 1
    end
  end
  
  cloned_array
end

def swap(array, first_index, second_index)
  temp = array[first_index]
  array[first_index] = array[second_index]
  array[second_index] = temp
  array
end
