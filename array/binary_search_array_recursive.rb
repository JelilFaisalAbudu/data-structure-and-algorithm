module BinarySearch
  def binary_search_array_recursive(array, target_element)
    lower_bound = 0
    upper_bound = array.length - 1
  
    binary_search_array_recursive_helper(array, lower_bound, upper_bound,target_element)
  end
  
  private
  
  def binary_search_array_recursive_helper(array, lower_bound, upper_bound, target_element)
    if lower_bound <= uppper_bound
      mid_bound = (lower_bound + upper_bound) / 2
      
      if target_element == array[mid_bound]
        return mid_bound
      elsif target_element < array[mid_bound]
        return binary_search_array_recursive_helper(array, lower_bound, mid_bound - 1, target_element)
      else
        return binary_search_array_recursive_helper(array, mid_bound + 1, upper_bound, target_element)
      end
    end
    
    -1
  end
end

