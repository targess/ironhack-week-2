class Bowling
	attr_reader :score

	def initialize
		@score = 0
		@strike = 0
	end

	def hit(pint_count)
		@score += pint_count
		if @strike > 0
			@score += pint_count
		end
		if pint_count == 10
			@strike = 3
		end
	end
end