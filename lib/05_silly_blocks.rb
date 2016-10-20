def reverser()
	string = yield
	wordArray = yield.split(' ')
	wordArray.map! { |e| e.reverse }

	return wordArray.join(' ')
end

def adder(num = 1)
	return yield + num 
end


def repeater(num = 3)
	count = 0

	while count < num
		yield(count)
		count += 1
	end
	
end

reverser { "hello" }

repeater { |n| n += 1 }
	
adder do
	newRand = Random.new
	newRand.rand(100)
end


