require 'Library'

RSpec.describe Library do

	let (:my_library) {Library.new}
	describe "#import_movies" do
		it "with 9 films" do
			my_library = Library.new
			my_library.import_movies("Star Wars")
			expect(my_library.movies.size).to eq(9)
		end
		pending "with posters"
	end
	describe "#search" do
		pending 'find a movie'
	end
end