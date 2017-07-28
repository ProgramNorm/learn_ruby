#write your code here
def translate(string)
	first_vowel = 0
	result = ''
	vowels = 'aeiou'
	words = string.downcase.split
	for word in words
		word.length.times do |c|
			first_vowel = c
			if word[first_vowel] == 'q' && word[first_vowel + 1] == 'u'
				first_vowel += 2
				break
			elsif vowels.include? word[first_vowel]
				break
			end
		end
		if first_vowel == 0
			result += (word + 'ay') + ' '
		else
			result += (word[first_vowel..-1] + word[0...first_vowel] + 'ay') + ' '
		end
	end
	return result.strip
end