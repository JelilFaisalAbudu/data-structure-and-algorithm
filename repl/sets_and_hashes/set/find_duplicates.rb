require 'set'

def find_duplicates(array)
  # write your code here
  result = []
  uniq_list = Set.new
  array.each do |el|
    result << el if uniq_list.include?(el)
    uniq_list << el
  end
  result
end
