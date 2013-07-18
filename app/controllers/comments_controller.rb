class CommentsController < ApplicationController
	before_action :require_user

	def create
		@post = Post.find(params[:post_id])
		@comment = Comment.new(params.require(:comment).permit(:body))
		@comment.post = @post

		if @comment.save
			redirect_to post_path(@post), notice: "Your comment was successfully created!"
		else
			render 'posts/show'
		end	
	end



	end