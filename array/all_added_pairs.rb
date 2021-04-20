def search_all_added_pairs(array, weight)
  return -1 if array.size <= 1

  hash_table = {}
  result = []

  for index in 0...array.size
    current_element = array[index]
    difference = weight - current_element
    puts current_element
    if hash_table[difference]
      hash_table[difference].each { |diff_pos| result << [diff_pos, index] }
    end

    if hash_table[current_element]
      hash_table[current_element] << index
    else
      hash_table[current_element] = [index]
    end
  end

  puts hash_table
  if result.size > 0
    result
  else
    -1
  end
end
p search_all_added_pairs([2, 1, 4, 0, 6, 6, 0, 5], 6)
# => [[0, 2], [3, 4], [3, 5], [4, 6], [5, 6], [1, 7]]