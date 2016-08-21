class PostsController < ApplicationController

  def new
   @city = City.find_by_id(params[:id])
   @post = Post.new
   render :new
  end

  def create
    city = City.find_by_id(params[:id])
    post_params = params.require(:post).permit(:title, :content)
    post = Post.new(post_params)
    id = current_user[:id]
    post[:user_id] = id
    city.posts.append(post)
    redirect_to post_path
  end

  def show
    @city = City.find_by_id(params[:id])
    @post = Post.find_by_id(params[:id])
    @post.reverse
    render :show
  end
end
