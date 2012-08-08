class StaticController < ApplicationController
  def home
     redirect_to lessons_path and return if current_student
  end

  def basic
  end
end
