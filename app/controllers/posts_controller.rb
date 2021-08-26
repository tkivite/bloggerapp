class PostsController < ApplicationController
  before_action :redirect_if_not_signed_in
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      redirect_to root_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :title, :upload_image)
          .merge(user_id: current_user.id)
  end
end
