require 'Lexiconomitron'

RSpec.describe Lexiconomitron do

	let (:lexi) {Lexiconomitron.new}

	describe "#eat_t" do
		it "removes every  letter t from the input" do
			expect(lexi.eat_t("great scott!")).to eq("grea sco!")
		end
	end
	describe "#shazam" do 
		it "takes strings array and reverses letters without t, returns first and last" do
			expect(lexi.shazam(["This","is","a","boring","test"])).to include("sih")
			expect(lexi.shazam(["This","is","a","boring","test"])).to include("se")
		end
	end
	describe "#oompa_loompa" do
		it "takes strings array returns which size lower or equals three in same order" do
			expect(lexi.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
		end

		it "returns strings wich size <= 3 and without t" do
			expect(lexi.oompa_loompa(["one", "two", "three", "four"])).to eq(["one", "wo"])
		end
	end
end