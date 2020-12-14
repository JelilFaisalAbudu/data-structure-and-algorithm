module HackerRank
  def repeatedString(str, char = 'a', n)
    input_str_len = str.length
    count_target = str.count(char)
    divide = n / input_str_len
    rem = n % input_str_len
    total = (count_target * divide)
    rem_count = 0
    rem_count = str.slice(0..(rem - 1)).count(char) if rem >= 1
    total += rem_count
  end

  # Complete the anagram function below.
  def anagram(s)
    return -1 unless s.length.even?

    half1 = s.slice(0, s.length / 2)
    half2 = s.slice(s.length / 2, s.length)

    (0..half1.length - 1).each do |i|
      half2.sub!(half1[i], '') if half2.include?(half1[i])
    end
    half2.length
  end
end
