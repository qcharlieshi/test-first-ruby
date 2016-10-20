class Dictionary
  attr_accessor :entries

  def initialize()
  	@entries = { }
  end

  def add(entry)
  	if entry.class == Hash
  		entryKey, entryValue = 0
  		entry.each_pair { |key, value| entryKey = key; entryValue = value  }
  		@entries[entryKey] = entryValue
	else #entry.class == 'String'
		@entries[entry] = nil
	end	
  end

  def keywords
  	@entries.keys.sort
  end

  def include?(entry)
  	return true if @entries.keys.include?(entry)
  	return false
  end

  def find(entry)
  	returnHash = {}


  	@entries.each do |key, value| 
  		returnHash[key] = value if key[0..entry.length] == entry
  		returnHash[key] = value if key[0..1] == entry[0..1]
	end
  		
  	return returnHash
  end

  def printable
  	returnArray = @entries.sort.map { |key,value| "[#{key}] \"#{value}\"" }

	returnArray.join("\n")
  end

end


newDic = Dictionary.new()

newDic.add( { newterm: "difinition" } )

puts newDic.entries[:newterm]