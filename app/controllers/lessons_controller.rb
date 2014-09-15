class LessonsController < ApplicationController
  def index
    @lessons = Lesson.visible.order("position ASC").all
  end

  def show
    @lesson = Lesson.visible.find(params[:id])
  end
end
