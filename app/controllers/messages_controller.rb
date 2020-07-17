class MessagesController < ApplicationController

  def index
    @messages = Message.includes(:user).order("created_at DESC")
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
    if Message.save
      redirect_to root_path, notice: 'メッセージが送信されました'
    else
      redirect_to root_path, notice: 'メッセージを入力してください'
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  private
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end



end