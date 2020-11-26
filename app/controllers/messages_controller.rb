class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @chat = Chat.find(params[:chat_id])
    @message = Message.new(message_params)
    @message.chat = @chat
    @message.user = current_user
    if @message.save
      ChatChannel.broadcast_to(@chat,
      render_to_string(partial: "message", locals: { chat: @chat }))
      redirect_to game_path(@chat.game, anchor: "message-#{@message.id}")
    else
      render "games/show"
    end
  end

  private 
  def message_params
    params.require(:message).permit(:message)
  end

end
