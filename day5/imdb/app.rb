require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative "lib/library.rb"

@@questions = ["Which movie was released in: ", "Which movie was director: "]

@terms = ["galaxy", "ball", "cry", "vegas", "happy"]

@@my_movies = Library.new
@@my_movies.import_movies(@terms[rand(@terms.size)])

get '/' do
	redirect to('/movies')
end

get '/movies' do
	random_movie = @@my_movies.get_random_film
	@year = random_movie.year
	@director = random_movie.director.first
	@answers = [@year.to_s, @director.to_s]
#	i = rand(@answers.size)
	i = 0
	@answer = @answers[i]
	@question = @@questions[i]
	@movies = @@my_movies.movies
	erb(:movies)
end

get '/new_quiz_term' do
	erb(:new_quiz_term)
end

post '/create_quiz_term' do
	@@my_movies.import_movies(params[:text])
	redirect to ('/')
end