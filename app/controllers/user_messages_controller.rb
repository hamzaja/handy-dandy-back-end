class UserMessagesController < ApplicationController
  def index
    @messages = UserMessage.all
    render json: @messages
  end

  def show

    @message = UserMessage.all.where(message_id:(params[:id]))
    render json: @message
  end

def create
    @message = UserMessage.create(user_messages_params)
    render json: @message
  end

private

  def user_messages_params
    params.permit(:text, :user_id, :message_id)
  end

end
