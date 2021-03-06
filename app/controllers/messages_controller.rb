class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]
  before_action :set_subject, only: [:new, :create, :edit, :update, :show, :destroy]
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @message.subject = @subject
    if @message.save
      respond_to do |format|
        format.js
        format.html { redirect_to subject_path(@subject) }
      end
    else
      respond_to do |format|
        format.js
        format.html { render 'subject/show' }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    @message.update(message_params)
    redirect_to subject_path(@subject)
  end

  def destroy
    if @message.destroy
      respond_to do |format|
        format.js
        format.html { redirect_to subject_path(@subject) }
      end
    else
      respond_to do |format|
        format.js
        format.html { render 'subject/show' }
      end
    end
  end

  private
  def set_message
    @message = Message.find(params[:id])
  end

  def set_subject
    @subject = Subject.find(params[:subject_id])
  end

  def message_params
    params.require(:message).permit(:content, :subject_id, :user_id)
  end

end
