class Temperature
	attr_accessor :degreesCelsius, :degreesFahrenheit

	def initialize(option = {})
		if option.include?(:c)
			@degreesCelsius = option[:c]
			@degreesFahrenheit = in_fahrenheit(option[:c])
		else
			@degreesFahrenheit = option[:f]
			@degreesCelsius = in_celsius(option[:f])
			
		end
	end

	def in_fahrenheit(num = 0)
		return @degreesFahrenheit unless @degreesFahrenheit == nil

		@degreesFahrenheit = @degreesCelsius * (9.0/5.0) + 32
	end

	def in_celsius(num = 0)
		return @degreesCelsius unless @degreesCelsius == nil

		@degreesCelsius = (@degreesFahrenheit - 32) * (5.0/9.0)
	end

	def self.from_celsius(temp)
		Temperature.new(:c => temp)
	end
	
	def self.from_fahrenheit(temp)
		Temperature.new(:f => temp)
	end
end

class Celsius < Temperature
	def initialize(temp)
		super(:c => temp)
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		super(:f => temp)
	end
end
