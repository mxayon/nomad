class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    user = User.new(user_params)
    user[:photo] = "http://i.imgur.com/49Iw8sS.jpg"
    if user.save
      flash[:success] = "Welcome to #{:first_name}@switt.com, your account is now active yo"
      login(user)
      redirect_to user_path(user.id)
    else
      flash[:error] = user.errors.full_messages.join(", ")
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
