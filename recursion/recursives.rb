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

def sqrt(number)
  sqrt_recursive(number, 0, number)
end

# This algo uses the normal binary type to find the square root of a given perfect square number
def sqrt(number)
	#  Define a helper method to do the work
	sqrt_recursive(number, 0, number)
end

# def sqrt_recursive(number, min_interval, max_interval)
#   # Your code here
#   while min_interval <= max_interval
#     mid_interval = (min_interval + max_interval)/2
#     if (mid_interval * mid_interval) == number
#       return mid_interval
#     elsif (mid_interval * mid_interval) > number
#       max_interval = mid_interval
#     else
#       min_interval = mid_interval
#     end
#   end
# end


# Implemantation with a recursive helper method

def sqrt_recursive(number, min_interval, max_interval)
  mid = (min_interval + max_interval) / 2
  if mid * mid == number
    mid
  elsif mid * mid > number
    max_interval = mid
    sqrt_recursive(number, min_interval, max_interval)
  else
    min_interval = mid
    sqrt_recursive(number, min_interval, max_interval)
  end
end

print_n_bottles(10)