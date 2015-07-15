require 'pry'
class CommentsController < ApplicationController

  def index
    post = Post.find(params[:post_id])
    @comments  = post.comments

  end

  def create
    Post.new
  end

  def show

  end

  def destroy
    authorize 
  end
end