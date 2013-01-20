class CommentsController < ApplicationController
  before_filter :authenticate_user!, :only => [:edit, :new, :create, :delete]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])
    redirect_to @post, :notice => "added comment"
  end
end
