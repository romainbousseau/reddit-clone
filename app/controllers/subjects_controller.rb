class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :update, :edit, :create]
  def new
    @subject = Subject.new
  end

  def index
    @subjects = Subject.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def subject_params
    params.require(:subject).permit(:title, :content, :user_id)
  end

  def set_subject
    @user = Subject.find(params[:id])
  end
end
