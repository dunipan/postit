class CommentsController < ApplicationController
	before_action :require_user
	
	def create
		
		@post = Post.find(params[:post_id])
		@comment = @post.comments.build(params.require(:comment).permit(:comment))
		#alternatively you can use @comment.post = @post with @comment= Comment.new above
		@comment.creator = current_user

		if @comment.save
			flash[:notice] = "Your comment was added"
			redirect_to post_path(@post)
		else
			render 'posts/show'
		end
	end
end