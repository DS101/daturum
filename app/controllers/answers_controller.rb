class AnswersController < ApplicationController

  before_filter :authenticate_user!

  def new
    @answer = Answer.all        
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user_email = current_user.email
    @answer.user_id = current_user.id
    @answer.save
    redirect_to questions_path
  end



  private

  def answer_params
    params.require(:answer).permit(:body, :user_id, :question_id)
  end
end
