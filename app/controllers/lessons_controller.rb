class LessonsController < ApplicationController
  before_filter :authenticate_student!, :only => [:show]
  def index
    @lessons = Lesson.visible.order("position ASC").all
  end

  def show
    @lesson = Lesson.visible.find(params[:id])
    id = current_student.id
    @answer = Answer.find_or_initialize_by_student_id_and_lesson_id(id, @lesson.id)
  end
end
