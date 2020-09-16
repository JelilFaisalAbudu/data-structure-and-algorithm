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

p palinderome?('aaa')