# Rule 1: If a word begins with a vowel sound, add an "ay" sound to
# the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end
# of the word, and then add an "ay" sound to the end of the word.

def translate(sentence)
	wordsArray = sentence.split(' ')
	returnArray = []

	wordsArray.each do |e| 
		while true
			if e[0].match(/[aeiou]/)
				e = e + 'ay'
				returnArray.push(e)
				break
			else
				if e[0..1].match(/qu/)
					e = e + e[0..1]
					e[0..1] = ''
				else
					e = e + e[0]
					e[0] = ''
				end
				#if e[0..2].match(/sch/)
				#puts e
			end
		end
	end


	#puts returnArray
	return returnArray.join(' ')
end

puts translate("banana")