class PostsController < ApplicationController
  def new
   @city = City.find_by_id(params[:id])
   @post = Post.new
   render :new
  end
  def create
    city = City.find_by_id(params[:id])
    post_params = params.require(:post).permit(:title, :content, :picture)
    post = Post.new(post_params)
    id = current_user[:id]
    post[:user_id] = id
    city.posts.append(post)
    redirect_to post_path
  end
  def show
    @city = City.find_by_id(params[:id])
    @post = Post.find_by_id(params[:id])
    render :show
  end
  def edit
    @post = Post.find_by_id(params[:post_id])
    @city = City.find_by_id(params[:city_id])
  end
  def update
    @city = City.find_by_id(params[:city_id])
    post_id = params[:post_id]
    @post = Post.find_by_id(post_id)
    post_params = params.require(:post).permit(:title, :content, :picture)
    @post.update_attributes(post_params)
    redirect_to city_path(@post.city.id)
  end
end
