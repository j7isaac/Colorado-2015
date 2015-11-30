class CommentsController < ApplicationController
	def index
		@comment = Comment.last
	end
end
