class LessonsController < ApplicationController
  before_filter :authenticate_student!, :only => [:show]
  def index
    @lessons = Lesson.visible.order("position ASC").all
  end

  def show
    @lesson = Lesson.visible.find(params[:id])
    @answer = Answer.find_or_initialize_by(student_id: current_student.id, lesson_id: @lesson.id)
  end
end
