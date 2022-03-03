class CommentsController < ApplicationController
  def create
    @prospect = Prospect.find(params[:prospect_id])
    @comment = Comment.new(comment_params)
    @user = current_user
    @comment.user = @user
    @comment.prospect = @prospect

    if @comment.save
      redirect_to prospect_path(@prospect)
    else
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:message)
  end
end
