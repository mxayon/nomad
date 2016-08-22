class PostsController < ApplicationController

  before_action :logged_in?, except: [:index, :show]

  def index
  end

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
    if post.save
      flash[:success] = "Post is now online!"
      city.posts.append(post)
      redirect_to city_path
    end
  end
  def show
    @city = City.find_by_id(params[:id])
    @post = Post.find_by_id(params[:id])
    render :show
  end
  def edit
    @post = Post.find_by_id(params[:post_id])
    @city = City.find_by_id(params[:city_id])
    if session[:user_id] != @post.user_id
      redirect_to city_path
    end
  end
  def update
    @city = City.find_by_id(params[:city_id])
    post_id = params[:post_id]
    @post = Post.find_by_id(post_id)
    if session[:user_id] == @post.user_id
      @post.update_attributes(p_params)
      flash[:notice] = "Successfully updated post!"
      redirect_to city_path(@post.city.id)
    else
      redirect_to city_path(@post.city.id)
    end
  end
  def destroy
    post = Post.find_by_id(params[:post_id])
    if session[:user_id] == post.user_id
      post.destroy
      flash[:notice] = "Successfully deleted post!"
      redirect_to city_path(post.city.id)
    else
      redirect_to city_path(post.city.id)
    end
  end

  private

  def p_params
    params.require(:post).permit(:title, :content, :picture)
  end
end
