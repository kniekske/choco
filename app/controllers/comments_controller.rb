class CommentsController < ApplicationController
	before_filter :find_chocolate ,only:[:index, :new, :create]

	respond_to :html

	def index
		@comments = @chocolate.comments  
		respond_with @comments 
	end

	def new
		@comment = @chocolate.comments.build
		respond_with @comment
	end

	def edit
		@comment = Comment.find(params[:id])
		respond_with @comment
	end

	def create
		@comment = @chocolate.comments.build(permitted_params)
		@comment.save
		respond_with @comment, location: @comment.chocolate
	end

	def update
		@comment = Comment.find(params[:id])
		@comment.update_attributes(permitted_params)
		respond_with @comment
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		respond_with @comment, location: @comment.chocolate
	end

	def permitted_params
		params.require(:comment).permit(:name, :comment, :email, :rating)
	end

	def find_chocolate
		@chocolate = Chocolate.find(params[:chocolate_id])
	end



end