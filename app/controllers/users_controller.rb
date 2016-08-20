class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to user_path(user.id)
    else
      redirect_to '/signup'
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    @posts = Post.find_by_id(params[:id])
    render :show
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
