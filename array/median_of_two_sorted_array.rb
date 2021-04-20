def median_of_two_sorted_arrays(array1, array2, size = array1.size)
  return -1 if (array1.size  <= 0) || (array2.size  <= 0) || size.zero?

  return (array1[0] + array2[0]) / 2.0 if size == 1

  return (
    [array1[0], array2[0]].max + [array1[1], array2[1]].min
  ) / 2.0 if size == 2

  median1 = median_of_array(array1)
  median2 = median_of_array(array2)

  return median1 if median1 == median2

  even_offset = size % 2 == 0 ? 1 : 0
  offset_minus = (size /2)
  offset_plus = (size /2) + even_offset

  if median1 < median2
    return median_of_two_sorted_arrays(
      array1[offset_minus..-1],
      array2[offset_minus..-1],
      offset_plus
    )
  else
    return median_of_two_sorted_arrays(
      array2[offset_minus..-1],
      array1[offset_minus..-1],
      offset_plus
    )
  end
end

def median_of_array(array)
  array_size = array.size
  median = nil

  if array_size % 2 == 1
    median = array[array_size/2]
  else
    left_element = array[(array_size / 2) -1]
    right_element = array[(array_size / 2)]
    median = (left_element + right_element) / 2.0
  end
  median
end

p median_of_two_sorted_arrays([1 , 2 , 3 ], [4 , 5 , 6 ], 3)
# => 3.5

p median_of_two_sorted_arrays([11 , 23 , 24 ], [32 , 33 , 450 ], 3)
# => 28

p median_of_two_sorted_arrays([1 , 2 , 3 ], [2 , 3 , 5 ], 3)
# => 2.5