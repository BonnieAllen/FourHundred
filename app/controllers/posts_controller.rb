class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :owned_post, only: [:edit, :update, :destroy]

 def index
   @posts = Post.all.order('created_at DESC').page params[:page]
 end

 def show
 end

 def new
   @post = Post.new
 end

 def create
  @post = Post.create(post_params)
  redirect_to posts_path
end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:success] = "Style updated."
      redirect_to posts_path
    else
      flash[:alert] = "Update failed.  Please check the form."
      render :edit
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "Your style post has been deleted."
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:image, :supertitle)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def owned_post
    unless current_user == @post.user
      flash[:alert] = "Create your own fresh!"
      redirect_to root_path
    end
  end
end
