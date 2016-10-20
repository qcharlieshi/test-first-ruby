def add(num1, num2)
	return num1 + num2
end

def subtract(num1, num2)
	return num1 - num2
end

def sum(array)
	return 0 if array.length == 0
	return array.inject { |sum, n| sum + n } 
end

def multiply(*args)
	#return num1 * num2
	return args.inject { |sum, n| sum * n }
end

def power(num1, num2)
	return num1**num2
end

def factorial(num)
	if num == 0
		return 1
	elsif num == 1
		return 1
	elsif num == 2
		return 2
	elsif num > 2
		return (1..num).inject { |sum, n| sum * n }
	end
end
