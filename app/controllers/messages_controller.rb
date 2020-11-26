class MessagesController < ApplicationController

  def create
    @chat = Chat.find(params[:chat_id])
    @message = Message.new(message_params)
    @message.chat = @chat
    @message.user = current_user
    if @message.save
      redirect_to game_path(@chat.game, anchor: "message-#{@message.id}")
    else
      render "chats/show"
    end
  end

  private 
  def message_params
    params.require(:message).permit(:message)
  end

end
