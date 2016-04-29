class QuestionsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @questions = Question.all  
  end

  def new
    @question = Question.new  
  end

  def create
    @question = current_user.questions.build(question_params)
    @question.user_email = current_user.email
    if @question.save
      flash[:success] = "Question created!"
      redirect_to questions_path
    else
      render action :new
    end
  end



  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end
