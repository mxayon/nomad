class PostsController < ApplicationController
  def create
    @city = City.find(params[:city_id])
    @post.users.push(current_user)
    redirect_to current_user
  end

  def index
    @user = User.find_by_id(params[:user_id])
    @posts = @user.posts
    render index
  end
end
