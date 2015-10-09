class UsersController < ApplicationController
  # before_action :logged_in_user,  only: [:show, :edit, :update, :destroy, :following, :followers]

   def index
    @users = User.all
    @users = User.paginate(page: params[:page])
  end

  def profile
    @user = current_user
    render 'show'
  end

    def show
    @user = User.find(params[:id])
  end

    def new
    @user = User.new
  end
  
  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end
  
  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end
end