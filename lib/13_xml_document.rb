class XmlDocument
	def initialize (indent = false)
		@indent = indent
		@space = 0
	end

	def method_missing(val, *args, &block)
		attr = []

		if args[0]
			args[0].each do |key, value|
				attr.push("#{key.to_s}=\"#{value}\"")
			end
		end

		if attr.size == 0 then tag = "<#{val}" 	
		else tag = "<#{val} #{attr.join(" ")}" end
		
		if block == nil
			if @indent then tag += "/>\n"
			else tag += "/>" end
		else
			if @indent
				@space += 2
				tag += ">\n#{" "*@space}#{yield}#{" "*(@space - 2)}</#{val}>\n"
				@space -= 2
			else tag += ">#{yield}</#{val}>" end
		end

		tag
	end

end
