class CommentsController < ApplicationController
  before_action :set_post

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:body))
    # how the line below works?
    # @post.comments.create! params.require(:comment).permit(:body)
    redirect_to @post
  end
  private
    def set_post
      @post = Post.find(params[:post_id])
    end
end
