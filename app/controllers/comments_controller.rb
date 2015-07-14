class CommentsController < ApplicationController

  def index
    @comments  = Comment.find_by(post_id: 1)
  end

  def create
    Post.new
  end

  def show

  end
end