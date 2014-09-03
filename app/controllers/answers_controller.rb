class AnswersController < ApplicationController
  respond_to :html, :json

  def create
    @answer = current_student.answers.create(answer_params)
    redirect_to @answer.lesson
  end

  def update
    @answer = current_student.answers.find(params[:id])
    @answer.update_attributes(answer_params)
    redirect_to @answer.lesson
  end

  private

  def answer_params
    params[:answer][:body] = params[:code] if params[:code]
    params.require(:answer).permit(:body, :restart, :lesson_id)
  end
end
