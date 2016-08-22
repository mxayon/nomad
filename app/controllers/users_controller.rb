class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    user = User.new(user_params)
    user[:photo] = "http://i.imgur.com/49Iw8sS.jpg"
    if user.save
      flash[:success] = "Welcome to switt.com, your account is now active yo"
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

  def edit
    @user = User.find_by_id(params[:id])
    if session[:user_id] != @user[:id]
      flash[:alert] = "You may not edit another user's profile."
      render :show
    else
      render :edit
    end
  end

  def update
    @user = User.find_by_id(params[:id])
    if session[:user_id] == @user[:id]
      @user.update(user_params)
      flash[:notice] = "Successfully updated profile."
      redirect_to user_path(@user)
    else
      flash[:error] = "user.errors.full_messages.join(", ")"
      redirect_to edit_user_path(@user)
    end
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :location, :username, :photo)
  end

end
