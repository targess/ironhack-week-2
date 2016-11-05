class Lexiconomitron
	def eat_t(string)
		string.gsub(/t|T/, '') 
	end

	def shazam(array)
		array.map!	do |string|
			eat_t(string.reverse)
		end
		array
	end

	def oompa_loompa(array)
		result = []
		array.map do |string|
			if string.size <= 3 
				result.push(eat_t(string))
			end
		end
		result
	end
end