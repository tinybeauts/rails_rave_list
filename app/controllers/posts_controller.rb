class PostsController < ApplicationController

  def create
    @post = Post.new params[:post]
  end

  def new
    @post = Post.new
  end
end
