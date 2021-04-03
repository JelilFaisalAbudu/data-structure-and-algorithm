def full_merge_sort(array)
  create_full_merge_sort(array).map { |el| el.split(' ')[1] }
end

def create_full_merge_sort(array)
  size = array.size
  return array  if size == 1

  first_half_array = array[0...size / 2]
  second_half_array = array[size / 2...size]

  first_half_array = create_full_merge_sort(first_half_array)
  second_half_array = create_full_merge_sort(second_half_array)

  merge_sort(first_half_array, second_half_array)
end

def merge_sort(array1, array2)
  merged_array = []

  index1 = index2 = index3 = 0

  while (index1 < array1.size) && (index2 < array2.size)
    if array1[index1].split[0].to_i <= array2[index2].split[0].to_i
      merged_array << array1[index1]
      index1 += 1
    else
      merged_array << array2[index2]
      index2 += 1
    end
  end

  while index1 < array1.size
    merged_array << array1[index1]
    index1 += 1
  end

  while index2 < array2.size
    merged_array << array2[index2]
    index2 += 1
  end

  merged_array
end

p full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
