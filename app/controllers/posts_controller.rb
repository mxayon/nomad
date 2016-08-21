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
    post_params = params.require(:post).permit(:title, :content)
    post = Post.new(post_params)
    id = current_user[:id]
    post[:user_id] = id
    if post.save
      flash[:success] = "Post is now online!"
      city.posts.append(post)
      redirect_to city_path
    else
      flash[:error] = post.errors.full_messages.join(", ")
      redirect_to city_path
    end
  end

  def show
    @city = City.find_by_id(params[:id])
    @post = Post.find_by_id(params[:id])
    render :show
  end
end
