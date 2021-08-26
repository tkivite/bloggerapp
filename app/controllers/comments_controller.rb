class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create(post_id: @post.id,
                              user_id: comment_params[:user_id],
                              content: comment_params[:content],
                              parent_type: comment_params[:parent_type],
                              parent_id: comment_params[:parent_id])
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :parent_type, :parent_id)
          .merge(user_id: current_user.id)
  end
end
