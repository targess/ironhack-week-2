require_relative "imdbImporter.rb"

class Library
	attr_reader :movies
	def initialize(movies = [])
		@movies = movies
	end

	def add_movie(name)
		ImdbImporter.search_movie(name)
	end

	def get_random_film
		@movies[rand(@movies.size)]
	end

	def import_movies(name)
		movies = ImdbImporter.search_all_movies(name)
		i = 0
		count = 0
		while (count < 9)
			movie = movies[i]
			if movie.poster
				@movies.push(movie)
				count += 1			
			end
			i += 1
		end 
	end
end