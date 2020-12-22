require 'set'

def find_duplicates(array)
  # write your code here
  result = []
  uniq_list = Set.new
  array.each do |el|
    if uniq_list.include?(el)
      result << el
    end
    uniq_list << el
  end
  result
end

