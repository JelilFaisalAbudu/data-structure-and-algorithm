def hash_table(arr)
  # write your code here
  map = {}
  hash_to_arr = []

  arr.each do |el|
    key = el.abs % 11
    map[key].nil? ? map[key] = [el] : map[key] << el
  end

  map.keys.sort.each do |key|
    hash_to_arr += map[key]
  end

  hash_to_arr
end
