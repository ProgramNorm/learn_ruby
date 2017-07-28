#write your code here
def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(string, multiply=2)
	result = string
	while multiply-1 > 0
		result += ' ' + string
		multiply -= 1
	end
	return result
end

def start_of_word(string, letters)
	return string[0..letters-1]
end

def first_word(string)
	return string.split[0]
end

def titleize(string)
	result = ''
	words = string.downcase.split
	print words
	result += words[0].capitalize
	for word in words[1..-1]
		if word == 'and' || word == 'over' || word == 'the' || word == 'to'
			result += ' ' + word
		else
			result += ' ' + word.capitalize
		end
	end
	return result
end