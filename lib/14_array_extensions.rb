class Array
	def sum
		result = 0
		if self.empty? then 0
		else
			self.each { |x| result += x }
		end
		return result
	end

	def square
		if self.empty? then []
 		else self.map { |x| x**2 }
		end
	end
	
	def square!
		if self.empty? then []
 		else self.map! { |x| x**2 }
		end
	end
	
end