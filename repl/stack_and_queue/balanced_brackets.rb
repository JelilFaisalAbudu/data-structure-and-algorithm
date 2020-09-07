def balanced_brackets?(string)
  # your code here
  stack = []
  balanced = false
  
  string.each_char do | char |
    if '({['.include?(char)
      stack << char
    elsif ']})'.include?(char) && !stack.empty?
      if char == ']' && stack[-1] == '['
        stack.pop
        balanced = true
      elsif char == '}' && stack[-1] == '{'
        stack.pop
        balanced = true
      elsif char == ')' && stack[-1] == '('
        stack.pop
        balanced = true
      else
        balanced = false
        break
      end
    end
  end
  balanced
end