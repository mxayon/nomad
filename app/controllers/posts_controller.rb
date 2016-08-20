class PostsController < ApplicationController

  def new
    @post = Post.new
    render :new
  end

  def save

  end
end
