class CommentsController < ApplicationController
	def index
		@comment = Comment.last
	end

	def new
		@comment = Comment.new
	end
end
