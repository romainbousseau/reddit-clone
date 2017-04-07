class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @message.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:content, :subject_id, :user_id)
  end
end
