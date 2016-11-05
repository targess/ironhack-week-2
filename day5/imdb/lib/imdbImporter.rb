require 'imdb'

class ImdbImporter
	def self.search_movie(name)
		Imdb::Search.new(name).movies[0]
	end

	def self.search_all_movies(name)
		Imdb::Search.new(name).movies
	end
end