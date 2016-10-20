class RPNCalculator
  attr_accessor :calculator

  def initialize
  	@calculator = []
  end

  def value
  	@calculator.last
  end

  def plus
  	if @calculator.size >= 2 
  		sum = @calculator.pop + @calculator.pop 
  		@calculator.push(sum) 
	else
		raise "calculator is empty"
	end	

	#@calculator = @calculator.inject { |mem, var| mem + var }
  	#@calculator += @calculator.pop if @calculator.size == 1
  end

  def minus
  	if @calculator.size >= 2 
  		second = @calculator.pop
  		first = @calculator.pop
  		diff = first - second
  		@calculator.push(diff) 
	else
		raise "calculator is empty"
	end	
  end

  def divide
  	if @calculator.size >= 2 
  		second = @calculator.pop.to_f
  		first = @calculator.pop.to_f
  		div = first / second
  		@calculator.push(div) 
	else
		raise "calculator is empty"
	end	
  end

  def times
  	if @calculator.size >= 2 
  		mul = @calculator.pop * @calculator.pop
  		@calculator.push(mul) 
	else
		raise "calculator is empty"
	end	
  end

  def push(token)
  	@calculator.push(token)
  end

  def tokens(string)
  	tokenArray = string.split(' ')
  	

  	returnArray = tokenArray.map do |e|
					if (e == "+" || e == "-" || e == "*" || e == "/") then e.to_sym 
					else e.to_i
					end
  	end
  end

  # def evaluate(string)
  # 	tokens(string).each do |e|
  # 		if s == :+ then self.plus
		# elsif s == :- then self.minus
		# elsif s == :* then self.times
		# elsif s == :/ then self.divide
		# else self.push(e)
		# end
  # 	end


  # 	self.value
  # end

end

	




