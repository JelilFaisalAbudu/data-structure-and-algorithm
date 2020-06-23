def repeatedString(str,char='a', n)
  input_str_len = str.length
  count_target = str.count(char)
  divide = n / input_str_len
  rem = n % input_str_len
  total = (count_target * divide)
  rem_count = 0
  if rem >= 1
    rem_count = str.slice(0..(rem-1)).count(char)
  end
  total = total + rem_count
end
