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



  private

  def addition_params
    params.require(:addition).permit(:body, :user_id, :answer_id)
  end
end