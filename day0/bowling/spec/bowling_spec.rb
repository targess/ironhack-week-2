require 'bowling'

RSpec.describe Bowling, "#score" do
	context "with no strikes or spares" do
		it "sums the pin count for each roll" do
			bowling = Bowling.new
			20.times { bowling.hit(4) }
			expect(bowling.score).to eq 80
		end
	end

	context "with one strike" do
		it "sums the pin count of two next hits when first is a strike" do
			bowling = Bowling.new
			bowling.hit(10)
			2.times { bowling.hit(4) }
			expect(bowling.score).to eq 26
		end
	end

	# context "with two strike" do
	# 	it "sums the pin count of two next hits when first is a strike" do
	# 		bowling = Bowling.new
	# 		bowling.hit(10)
	# 		bowling.hit(10)
	# 		2.times { bowling.hit(4) }
	# 		expect(bowling.score).to eq 50
	# 	end
	# end
end