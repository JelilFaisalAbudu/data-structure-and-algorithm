def convert_decimal_to_binary(num, binary_string = '')
  puts binary_string
  if num < 2
    binary_string += (num % 2).to_s
    puts binary_string
    binary_string
  else
    convert_decimal_to_binary(num / 2)
   binary_string += (num % 2).to_s
  end
  binary_string
end

 puts convert_decimal_to_binary(2)