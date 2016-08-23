class PostsController < ApplicationController

  before_action :logged_in?, except: [:index, :show]
  before_action :ensure_ownership!, only: [:update, :destroy]
  before_action :set_city, except: [:destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
   @post = Post.new
  end

  def create
    @post = @city.posts.new(post_params)
    current_user.posts << @post
    if @post.save
      flash[:success] = "Post is now online!"
      redirect_to city_path
    else
      flash[:error] = @post.errors.full_messages.join(", ")
      redirect_to city_path
    end
  end

  def show
    @posts = @user.posts
  end

  def edit
    redirect_to city_path unless current_user_is_owner?
  end

  def update
    if @post.update_attributes(post_params)
      flash[:notice] = "Successfully updated post! YO"
      redirect_to city_path(@post.city.id)
    else
      flash[:error] = post.errors.full_messages.join(", ")
      redirect_to edit_post_path(@post)
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "Successfully deleted post!"
    # flash[:error] = post.errors.full_messages.join(", ")
    redirect_to city_path(@post.city.id)
  end

  private

  def ensure_ownership!
    redirect_to login_path unless current_user_is_owner?
  end

  def current_user_is_owner?
    current_user.id == @post.user_id
  end

  def set_city
    @city = City.find_by_id(params[:city_id])
  end

  def set_post
    @post = Post.find_by_id(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :picture)
  end
end
