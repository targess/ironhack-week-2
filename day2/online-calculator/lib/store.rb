class Store 
	def self.put(data, file = "public/memory.txt")
		IO.write(file, data) 
	end

	def self.get(data, file = "public/memory.txt" )
		IO.read(file, data)
	end
end