def find_added_pairs(array, k)
  pairs = []
  set = []
  
  array.each do |element|
    next if (set.include?(element))
    second_element = (k - element)
    if array.include?(second_element)
      pairs << [element, second_element]
      set << element
      set << second_element
    end
  end
  pairs
end
