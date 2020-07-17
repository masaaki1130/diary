class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to "/messages/#{comment.message.id}"
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, message_id: params[:message_id])
  end
end
