class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to "/messages/#{comment.message.id}" 
    if @comment.save
      redirect_to "/messages/#{message.id}", notice: 'コメントが送信されました'
    else
      redirect_to "/messages/#{message.id}", notice: 'コメントを入力してください'
    end
  end

  def show
    @comment = Comment.new
    @comments = @message.comments.includes(:user)
  end


  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, message_id: params[:message_id])
  end
end
