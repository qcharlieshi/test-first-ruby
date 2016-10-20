class Timer
	attr_accessor :seconds

	def initialize(num = 0)
		@seconds = num
	end

	def time_string
		seconds, minutes, hours = 0, 0, 0

		seconds = @seconds % 60
		minutes = (@seconds / 60) % 60 
		hours = (@seconds / 3600)

		returnString = "#{format(hours)}:#{format(minutes)}:#{format(seconds)}"
	end

	def format(time)
		if time.to_s.length > 1
			return time
		else
			return '0' + time.to_s
		end
	end


end
