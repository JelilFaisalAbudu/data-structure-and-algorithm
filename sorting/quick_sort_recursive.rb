def partition(array, low = 0, hi = array.length - 1)
  pivot = array[low]
  i = low + 1
  j = hi
  
  while i < j
    
    while array[i] <= pivot
     puts i;  i += 1
    end
    
    while array[j] > pivot
      j -= 1
    end
    
    if i < j
      array[i], array[j] = array[j], array[i]
    end
  end
    array[low], array[j] = array[j], array[low]
    array
end
