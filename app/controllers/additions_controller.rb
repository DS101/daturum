class AdditionsController < ApplicationController

  before_filter :authenticate_user!

  def new
    @addition = Addition.new      
  end

  def create
    @addition = Addition.new(addition_params)
    @addition.user_email = current_user.email
    @addition.user_id = current_user.id
    @addition.save
    redirect_to questions_path
  end

  def update
    @addition = Addition.find(params[:id])
    answer = Answer.find(@addition.answer_id).body
    @addition.confirmed = true
    @addition.update(addition_params)    
    @addition.confirm_addition = @addition.confirm_addition.split(answer)[1]
    @addition.save
    redirect_to questions_path
  end



  private

  def addition_params
    params.require(:addition).permit(:body, :user_id, :answer_id, :confirm_addition)
  end
end