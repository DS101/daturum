class ConfirmAdditionsController < ApplicationController
  def new
    @confirm_addition = ConfirmAddition.new    
  end

  def create
    @confirm_addition = ConfirmAddition.new(confirm_addition_params)
    answer = Answer.find(@confirm_addition.answer_id).body
    @confirm_addition.body = @confirm_addition.body.split(answer)[1]
    @addition = Addition.find(@confirm_addition.addition_id)
    @addition.confirmed = true
    if @confirm_addition.body == nil
      @confirm_addition.body = @addition.body
    end
    @addition.save
    @confirm_addition.save
    redirect_to questions_path
  end


  private

  def confirm_addition_params
    params.require(:confirm_addition).permit(:body, :answer_id, :addition_id)
  end
end
