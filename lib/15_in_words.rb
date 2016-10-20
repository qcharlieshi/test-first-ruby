module Words
	def checkNumberName(num)
		numberName = {
			1_000_000_000_000 => "trillion",
			1_000_000_000 => "billion",
			1_000_000 => "million",
			1000 => "thousand",
			100 => "hundred",
			90 => "ninety",
			80 => "eighty",
			70 => "seventy",
			60 => "sixty",
			50 => "fifty",
			40 => "forty",
			30 => "thirty",
			20 => "twenty",
			19 => "nineteen",
			18 => "eighteen",
			17 => "seventeen", 
			16 => "sixteen",
			15 => "fifteen",
			14 => "fourteen",
			13 => "thirteen",              
			12 => "twelve",
			11 => "eleven",
			10 => "ten",
			9 => "nine",
			8 => "eight",
			7 => "seven",
			6 => "six",
			5 => "five",
			4 => "four",
			3 => "three",
			2 => "two",
			1 => "one",
			0 => "zero"
		}

		return numberName[num]
	end

	def in_words(words = self)

		finalString = ""
		number = words

		case number
		when 0..20
			finalString += checkNumberName(number)
		when 21..99
			finalString += checkNumberName((number - 5).round(-1)) #tens place
			finalString += " " unless number % 10 == 0 #space
			finalString += checkNumberName(number % 10) unless number % 10 == 0 #ones place
		when 100..999 #hundreds
			finalString += checkNumberName((number - 50).round(-2) / 100) #find how many hundreds
			finalString += " "
			finalString += checkNumberName(100) #hundred value
			finalString += " " unless number % 100 == 0 #space
			finalString += in_words(number % 100) unless number % 100 == 0 #recur back so I don't have to repeat steps iteratively
		when 1_000..999_999 #thousands
			finalString += in_words((number - 500).round(-3) / 1000) #find how many thousands
			finalString += " "
			finalString += checkNumberName(1000) #thousand value
			finalString += " " unless number % 1000 == 0 #space
			finalString += in_words(number % 1000) unless number % 1000 == 0 #recur back so I don't have to repeat steps iteratively
		when 1_000_000..999_999_999 #millions
			finalString += in_words((number - 500_000).round(-6) / 1_000_000) #find how many millions
			finalString += " "
			finalString += checkNumberName(1_000_000) #million value
			finalString += " " unless number % 1_000_000 == 0 #space
			finalString += in_words(number % 1_000_000) unless number % 1_000_000 == 0 #recur back so I don't have to repeat steps iteratively
		when 1_000_000_000..999_999_999_999 #billions
			finalString += in_words((number - 500_000_000).round(-9) / 1_000_000_000)
			finalString += " "
			finalString += checkNumberName(1_000_000_000)
			finalString += " " unless number % 1_000_000_000 == 0
			finalString += in_words(number % 1_000_000_000) unless number % 1_000_000_000 == 0 
		when 1_000_000_000_000..999_999_999_999_999 #trillions
			finalString += in_words((number - 500_000_000_000).round(-12) / 1_000_000_000_000)
			finalString += " "
			finalString += checkNumberName(1_000_000_000_000)
			finalString += " " unless number % 1_000_000_000_000 == 0
			finalString += in_words(number % 1_000_000_000_000) unless number % 1_000_000_000_000 == 0 
		else
		end

		return finalString
	end
end

class ::Bignum
	include Words
end

class ::Fixnum
	include Words
end


puts 1_888_259_040_036.in_words

