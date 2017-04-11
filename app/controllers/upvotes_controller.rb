class UpvotesController < ApplicationController
  def create
    @upvote = Upvote.new(upvote_params)
    @upvote.subject = Subject.find(params[:subject_id])
    if @upvote.save
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
  end

  private
  def upvote_params
    params.require(:upvote).permit(:user)
  end
end
