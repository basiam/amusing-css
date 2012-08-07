class AnswersController < ApplicationController
  respond_to :html, :json

  def create
    @answer = Answer.new(params[:answer])
    @answer.student = current_student
    @answer.body = params["code"] if params["code"].present?
    @answer.save
    redirect_to @answer.lesson
  end

  def update
    @answer = current_student.answers.find(params[:id])
    @answer.body = params["code"] if params["code"].present?
    @answer.body = nil if params["restart"].present?
    @answer.update_attributes(params[:answer])
    redirect_to @answer.lesson
  end
end
