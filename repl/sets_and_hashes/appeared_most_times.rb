# find the most appeared element in the an array.
# There can be more than one elements with the most occurrences
# but we are only interested in the first found element.

def appears_most_times(array)
  map = create_map(array)
  max_value = map.values.max

  map.each_key { |k| return k if map[k] == max_value }
end

def create_map(arr)
  map = {}
  arr.each do |el|
    map[el] = if map[el]
                map[el] + 1
              else
                map[el] = 1
              end
  end
  map
end
