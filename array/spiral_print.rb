def spiral_print(array)
  result = []
  top_row = 0
  right_col = array[0].size - 1
  bottom_row = array.size - 1
  left_col = 0

  while top_row <= bottom_row && left_col <= right_col
    for col in left_col..right_col
      result << array[top_row][col]
    end
    top_row += 1

    for row in top_row..bottom_row
      result << array[row][right_col]
    end
    right_col -= 1

    if top_row <= bottom_row
      right_col.downto(left_col) { | col | result << array[bottom_row][col] }
    end
    bottom_row -= 1
     
    if left_col <= right_col
      bottom_row.downto(top_row) { |row| result << array[row][left_col] }
    end
    left_col += 1
    
  end

  result
end

p spiral_print([
  [11, 12, 13, 14, 15],
  [16, 17, 18, 19, 20],
  [21, 22, 23, 24, 25],
  [26, 27, 28, 29, 30]
])
# => 11, 12, 13, 14, 15, 20, 25, 30, 29, 28, 27, 26, 21, 16, 17, 18, 19, 24, 23. 22