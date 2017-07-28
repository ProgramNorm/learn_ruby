#write your code here
def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	total = 0
	array.each do |number|
		total += number
	end
	total
end

def multiply(*numbers)
	product = 1
	numbers.each do |number|
		product *= number
	end
	product
end

def power(base, exponent)
	base**exponent
end

def factorial(number)
	if number < 2
		return 1
	end
	return number * factorial(number-1)
end


