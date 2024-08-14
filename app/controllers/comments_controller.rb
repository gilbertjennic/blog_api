class CommentsController < ApplicationController
  def index
    post = Post.find(params[:post_id])
    comments = post.comments
    render json: comments
  end

  def show
    comment = Comment.find(params[:id])
    render json: comment
  end

  def create
    post = Post.find(params[:post_id])
    comment = post.comments.build(comment_params)
    if comment.save
      render json: comment, status: :created
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
