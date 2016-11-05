require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative "lib/post.rb"
require_relative "lib/blog.rb"

first_post = Post.new("Mi primer post",Time.now.strftime("%m/%d/%Y"), "Lorem Ipsum Dolor", "pepe", "cosas")
second_post = Post.new("Seguimos escribiendo en el blog","10/22/2016","Lorem Ipsum Dolor", "pepe", "cosas")
third_post = Post.new("The Sponsored post","10/10/2016"," j0j0 j0j0", "manué", "cosas", true)
@@my_blog = Blog.new([first_post,second_post,third_post])

get '/' do
	redirect to('/posts')
end

get '/posts' do
	@posts_to_display = @@my_blog.latest_posts
	erb(:posts)	
end

get '/show_post/:id' do
	@post = @@my_blog.latest_posts[params[:id].to_i] 
	erb(:show_post)
end

get '/new_post' do
  erb(:new_post)
end

post '/create_post' do
  	@@my_blog.add_post(Post.new(params[:title], Time.now.strftime("%m/%d/%Y"), params[:text],  params[:author],  params[:category]))
  	redirect to ('/')
end