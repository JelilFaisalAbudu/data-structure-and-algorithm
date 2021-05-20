def convert_decimal_to_binary(num)
  binary_string = ''

  if num < 2
    binary_string += (num % 2).to_s
  else
    convert_decimal_to_binary(num / 2)
    binary_string += (num % 2).to_s
  end
  binary_string
end

 puts convert_decimal_to_binary(232)