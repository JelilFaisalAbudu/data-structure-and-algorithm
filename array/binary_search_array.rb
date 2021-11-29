def binary_search_array(array, element)
  lower_bound = 0
  upper_bound = array.length - 1
 
  while lower_bound <= upper_bound
    mid_bound = (lower_bound + upper_bound) / 2
    if element == array[mid_bound]
      return mid_bound
    elsif element < array[mid_bound]
      upper_bound = mid_bound - 1
    else
      lower_bound = mid_bound + 1
    end
  end
  -1
end
