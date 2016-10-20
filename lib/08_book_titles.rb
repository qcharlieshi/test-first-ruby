class Book
	attr_reader :title

	def title=(bookTitle)
		@title = capitalize(bookTitle)
	end

	def capitalize(bookTitle)
		wordsArray = bookTitle.split(' ')
		#print wordsArray
		returnArray = []
		wordsArray.map.with_index(0) do |ele, idx|
			if ele.match(/\b(the|a|an|and|of|in)\b/) && idx != 0 
				returnArray.push(ele)
			elsif idx == 0
				returnArray.push(ele.capitalize)
			else
				returnArray.push(ele.capitalize)
				#puts ele
			end
		end 

		#print returnArray
		return returnArray.join(' ')
	end

end

# newBook = Book.new
# newBook.title = 'war and peace'
# puts newBook.title


