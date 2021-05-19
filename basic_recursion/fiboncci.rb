def get_nth_fibonacci(n)
  fibonacci(n, 0, 1)
end

def fibonacci(n, last_before_last, last)
  return last_before_last if n.zero?
  return last if n.zero?

  fibonacci((n - 1), last, (last_before_last + last))
end

puts get_nth_fibonacci(100)