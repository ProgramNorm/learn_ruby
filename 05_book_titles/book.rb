class Book
# write your code here
	attr_reader :title

	def title=(str)
		first = false
		dont_capitalize = ['the', 'a', 'an', 'and', 'in', 'of']
		words = str.split
		new_words = []
		for word in words
			if word == words[0] && first == false
				new_words << word.capitalize
				first = true
			else
				if dont_capitalize.include? word
					new_words << word.downcase
				else
					new_words << word.capitalize
				end
			end
		end
		@title = new_words.join(' ')
	end
end

book = Book.new