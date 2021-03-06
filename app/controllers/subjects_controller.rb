class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :update, :edit, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def new
    @subject = Subject.new
  end

  def index
    @subjects = Subject.all.sort {|a,b| b.score <=> a.score}
  end

  def show
    @message = Message.new
    @messages = Message.where(subject_id: @subject)
  end

  def create
    @subject = Subject.new(subject_params)
    @subject.user = current_user
    if @subject.save
      redirect_to subjects_path
    else
      redirect_to new_subject_path
    end
  end

  def edit
  end

  def update
    @subject.update(subject_params)
    redirect_to subjects_path
  end

  def destroy
    @subject.destroy
    redirect_to subjects_path
  end

  private

  def subject_params
    params.require(:subject).permit(:title, :content, :user_id)
  end

  def set_subject
    @subject = Subject.find(params[:id])
  end
end
