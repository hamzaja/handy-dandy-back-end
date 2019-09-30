class MessagesController < ApplicationController
  def index
    @messages = Message.all
    render json: @messages
  end

def show
    @message = Message.find(params[:id])
    render json: @message
  end

def create
    @message = Message.create(chat_box_params)
    render json: @message
  end

private

  def chat_box_params
    params.permit(:name)
  end

end
