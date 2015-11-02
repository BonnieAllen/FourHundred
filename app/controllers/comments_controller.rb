class CommentsController < ApplicationController
 before_action :set_post

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end
 
 private

 def comment_params  
    params.require(:comment).permit(:content, :post_id)
 end

 def set_post  
    @post = Post.find(params[:post_id])
  end 
end
