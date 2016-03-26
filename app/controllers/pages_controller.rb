class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
  end

  def index
		@comments = Comment.all
	end

	def new
		@comment = Comment.new
	end

	def create
		Comment.create(comment_params)
		redirect_to root_path
	end

	private

	def comment_params
		params.require(:comment).permit(:message)
	end
end