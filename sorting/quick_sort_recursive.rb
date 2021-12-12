def quick_sort_recusive(array, low_index = 0, high_index = array.length - 1)
  
  if low_index < high_index
    pivot = partition(array, low_index, high_index)
    
    quick_sort_recusive(array, low_index, pivot - 1)
    quick_sort_recusive(array, pivot + 1, high_index)
  end
  
  array
end

def partition(array, low = 0, hi = array.length - 1)
  pivot = array[low]
  i = low + 1
  j = hi
  
 while i < j
    
   while array[i] <= pivot
     i += 1
   end
    
   while array[j] > pivot
     j -= 1
   end
    
   if i < j
     swap(array, i, j)
   end
 end
  swap(array, low, j)

  j
end

def swap(array, index_one, index_two)
  array[index_one], array[index_two] = array[index_two], array[index_one]
end

