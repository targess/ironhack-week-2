class Post
	attr_reader :title, :date, :text, :sponsored, :category, :author
	def initialize(title, date, text, author, category, sponsored = false)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
		@category = category
		@author = author
	end
end