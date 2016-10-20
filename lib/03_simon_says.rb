def echo(arg)
	return arg
end

def shout(arg)
	return arg.upcase
end

def repeat(arg, num = 0)
	return ((arg + ' ') * num).rstrip if num > 2
	return ((arg + ' ') * 2).rstrip
end

def start_of_word(arg, num)
	return arg[0...num]
end

def first_word(arg)
	return arg.split(' ').first
end

def titleize(arg)
	return arg.split(' ').map.with_index { |e, i| little_word?(e, i) ? e : e.capitalize! }.join(' ')
end

def little_word?(arg, index)
	littleWordsArray = ["and", "the", "over"]
	return true if littleWordsArray.include?(arg) && index != 0
end
