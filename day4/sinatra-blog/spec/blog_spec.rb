require 'Blog'

RSpec.describe Post do

	let (:my_blog) {Blog.new}
	describe "#posts" do
		it "returns an array of posts" do
			expect(my_blog.posts.class).to be(Array)
		end
	end

	describe "#latest_posts" do
		it "return array of sorted posts" do
			first_post = Post.new("post 1","10/23/2016", "Lorem Ipsum Dolor")
			second_post = Post.new("post 2","10/22/2016","Lorem Ipsum Dolor")
			my_blog.add_post(first_post)
			my_blog.add_post(second_post)

			expect(my_blog.latest_posts).to eq([second_post, first_post])
		end
	end
end