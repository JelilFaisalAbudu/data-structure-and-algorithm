module HackerRank
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

  # Complete the anagram function below.
  def anagram(s)
    return -1 unless s.length % 2 == 0
    half1 = s.slice(0, s.length / 2)
    half2 = s.slice(s.length / 2, s.length)
  
    for i in 0..half1.length - 1 do
        half2.sub!(half1[i], "") if half2.include?(half1[i])
    end
    half2.length

  end
end
