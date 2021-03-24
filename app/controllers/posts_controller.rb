class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[show create]
  def home
    @posts = Post.all.order(created_at: :desc)
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.order(created_at: :desc)
    @comment = Comment.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      render 'remote_js.js.erb'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      render 'remote_js.js.erb'
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
