class Timer
  	#write your code here
 	attr_accessor :seconds
 	attr_accessor :minutes
 	attr_accessor :hours

 	def initialize
  		@seconds = 0
  		@minutes = 0
  		@hours = 0
  	end

	def time_string
		convert_time
		return padded(@hours) + ":" + padded(@minutes) + ":" + padded(@seconds)
	end 

	def padded number
		if number.to_s.length == 1
			return "0" + number.to_s
		end
		return number.to_s
	end 

	def convert number
		count = 0
		while number > 59
			number -= 60
			count += 1
		end
		return count
	end

	def convert_time 
		minutes = convert @seconds
		@minutes += minutes
		@seconds -= minutes * 60
		hours = convert @minutes
		@hours += hours
		@minutes -= hours * 60
	end

end
