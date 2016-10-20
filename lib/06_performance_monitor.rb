require 'time'

def measure(runs = 1) 

	a = Time.now

	runs.times do
		yield()
	end

	b = Time.now

	elapsed_time = (b - a) / runs
end
