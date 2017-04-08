class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]
    before_action :set_subject, only: [:new, :create, :edit, :update, :show]
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @message.subject = @subject
    @message.save
    if @message.save
      redirect_to subject_path(@subject)
    end
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

    def set_subject
    @subject = Subject.find(params[:subject_id])
  end
end
