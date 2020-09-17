# This algo uses the recursive stragety to find out if a given string is true or false

def palinderome?(string)
	if string.length == 0 || string.length == 1
		true
	else
		if string[0] == string[-1]
			palinderome?(string[1..-2])
		else
			false
		end
	end
end

def factorial(num)
	if num == 0
		1
	else
		num * factorial(num - 1)
	end
end

def print_n_bottles(n)
	if n == 0
		puts 'no more bottles for the beer on the wall'
	else
		puts "#{n} bottles on the wall"
		print_n_bottles(n-1)
	end
end

def sum(number)
  # Your code here
  if number <= 1
    number
  else
    number + sum(number - 1)
  end
end

print_n_bottles(10)