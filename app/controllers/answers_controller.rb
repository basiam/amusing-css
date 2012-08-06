class AnswersController < ApplicationController
  respond_to :html, :json

  def create
    @answer = Answer.new(params[:answer])
    @answer.student = current_student
    @answer.save
    respond_with @answer
  end

  def update
    @answer = current_student.answers.find(params[:id])
    @answer.update_attributes(params[:answer])
    redirect_to @answer.lesson
  end
end
