class SessionsController < ApplicationController

  def new
    user = User.new
    render :new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Success! You have logged into switt.com!"
      redirect_to user_path(user.id)
    else
      flash[:error] = "Bad News Bears! You cannot access switt.com"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have left switt.com"
    redirect_to '/login'
  end

end
