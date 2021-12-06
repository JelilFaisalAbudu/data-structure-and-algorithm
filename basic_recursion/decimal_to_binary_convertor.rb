def convert_decimal_to_binary(num)
  if num <= 1
    puts num.to_s
    num.to_s
  else
    puts (num % 2).to_s
   convert_decimal_to_binary(num / 2) + (num % 2).to_s
  end
end

 puts convert_decimal_to_binary(245)