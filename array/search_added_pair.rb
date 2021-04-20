# Returns the first pair of indices whose elements add up to the given weight or -1 if not found.
def search_added_pair(array, weight)
  hash_table = {}
  for index in 0...array.size
    current_element = array[index]
    difference = weight - current_element
    if hash_table[difference]
      return [hash_table[difference], index]
    else
      hash_table[current_element] = index
    end
  end
  -1
end

p search_added_pair([15,1, 2, 3, 0, 4, 5], 15) # => [0, 4]

p search_added_pair([3, 5, 8, 100, 34, 54, 10], 110) # => [3, 6]

p search_added_pair([15, 0, 1, 2, 3, 4, 5, 0], 0) # => [1, 7]

p search_added_pair([15, 0, 1, 2, 3, 4, 5, 0], 384575) # => -1