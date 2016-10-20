class Friend

  def greeting(someone = nil)
  	return "Hello, #{someone}!" unless someone == nil
  	return "Hello!"
  end

end
