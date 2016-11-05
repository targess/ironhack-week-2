require_relative "post.rb"

class Blog
	attr_reader :posts
	def initialize(posts = [])
		@posts = posts
	end

	def add_post(post)
		@posts.push(post)
	end

	def latest_posts
		@posts.sort {|x,y| x.date <=> y.date}
	end

	private

	def sort_posts(posts = @posts)
		posts.sort {|x,y| x.date <=> y.date}
	end
end